#include "GameManager.h"
#include <iomanip>
#include <functional>
#include <fstream>
#include "SceneLoader.h"
#include "LuaManager.h"
#include "PhysicsManager.h"
#include "Structure/MainLoop.h"
#include "Structure/Scene.h"
#include "Structure/GameObject.h"
#include "Structure/Component.h"
#include "Components/AudioSourceComponent.h"
#include "SoundManager.h"

GameManager::GameManager() : state(MainMenu), level(1), levelScore(0), prevLevelScore(0), prevState(MainMenu), sManager(nullptr) { }

void GameManager::onGameOver() {
    if (changeScene("LoseMenu")) {
        sManager->onGameOver();
        Tapioca::logInfo("GameManager: Muelto.");
        deleteCurrentLevel();
        state = GameOver;
    }
}

bool GameManager::addLevel() {
    std::string levelName = "Level" + std::to_string(level);
    return changeScene(levelName);
}

void GameManager::deleteCurrentLevel() {
    std::string levelName = "Level" + std::to_string(level);
    Tapioca::MainLoop::instance()->deleteScene(levelName);
}

void GameManager::onWin() {
    deleteCurrentLevel();
    level++;
    if (level > N_LEVELS) {
        sManager->onWin(level, N_LEVELS);
        state = GameOver;
        if (!changeScene("WinMenu")) Tapioca::MainLoop::instance()->exit();
    }
    else {
        sManager->onWin(level, N_LEVELS);
        if (!addLevel()) Tapioca::MainLoop::instance()->exit();
        state = InGame;
    }
}

void GameManager::registerLuaFunctions() {
    Tapioca::LuaManager* lua = Tapioca::LuaManager::instance();
    lua->addLuaFunction("MainMenuButtonClick", [this]() { MainMenuButtonClick(); });
    lua->addLuaFunction("ReturnButtonClick", [this]() { ReturnButtonClick(); });
    lua->addLuaFunction("ReplayButtonClick", [this]() { ReplayButtonClick(); });
    lua->addLuaFunction("ContinueButtonClick", [this]() { ContinueButtonClick(); });
    lua->addLuaFunction("ControlsButtonClick", [this]() { ControlsButtonClick(); });
    lua->addLuaFunction("ControlsReturn", [this]() { ControlsReturn(); });
    lua->addLuaFunction("ExitButtonClick", [this]() { ExitButtonClick(); });
}

bool GameManager::initComponent(const CompMap& variables) {
    registerLuaFunctions();
    return true;
}

void GameManager::start() {
    //Tapioca::PhysicsManager::instance()->activateDebug(true);
    sManager = SoundManager::instance();

    changeScene("MainMenu");
    state = MainMenu;
    prevState = MainMenu;
}

void GameManager::update(const uint64_t deltaTime) { }

void GameManager::handleEvent(std::string const& id, void* info) {
    if (id == "ev_Pause") {
        if (state == MainMenu) Tapioca::MainLoop::instance()->exit();
        if (state == InGame) ToPause();
        else if (state == Pause)
            ContinueButtonClick();
        else if (state == Controls)
            ControlsReturn();
    }
    if (id == "ev_GameOver") onGameOver();
    if (id == "ev_Win") onWin();
}


bool GameManager::changeScene(std::string const& scene) const {
    return Tapioca::SceneLoader::instance()->loadScene(scene);
}

void GameManager::MainMenuButtonClick() {
    level = 1;
    levelScore = 0;
    if (addLevel()) {
        sManager->MainMenuButtonClick();
        Tapioca::MainLoop::instance()->deleteScene("MainMenu");
        state = InGame;
    }
}


void GameManager::ReturnButtonClick() {
    if (changeScene("MainMenu")) {
        sManager->ReturnButtonClick();
        deleteCurrentLevel();
        Tapioca::MainLoop::instance()->deleteScene("PauseMenu");
        Tapioca::MainLoop::instance()->deleteScene("WinMenu");
        Tapioca::MainLoop::instance()->deleteScene("LoseMenu");
        state = MainMenu;
    }
}

void GameManager::ReplayButtonClick() {
    if (addLevel()) {
        sManager->ReplayButtonClick();
        Tapioca::MainLoop::instance()->deleteScene("LoseMenu");
        Tapioca::MainLoop::instance()->deleteScene("PauseMenu");
        deleteCurrentLevel();
        state = InGame;
    }
}


void GameManager::ContinueButtonClick() {
    sManager->ContinueButtonClick();
    Tapioca::MainLoop::instance()->deleteScene("PauseMenu");
    std::string levelName = "Level" + std::to_string(level);
    Tapioca::MainLoop::instance()->getScene(levelName)->setActive(true);
    state = InGame;
}

void GameManager::ToPause() {
    if (changeScene("PauseMenu")) {
        sManager->ToPause();
        std::string levelName = "Level" + std::to_string(level);
        Tapioca::MainLoop::instance()->getScene(levelName)->setActive(false);
        state = Pause;
    }
}

void GameManager::ControlsReturn() {
    Tapioca::MainLoop::instance()->deleteScene("ControlsMenu");
    if (prevState == Pause) {
        sManager->ControlsReturn(prevState);
        Tapioca::MainLoop::instance()->getScene("PauseMenu")->setActive(true);
        state = Pause;
    }
    else {
        sManager->ControlsReturn(prevState);
        Tapioca::MainLoop::instance()->getScene("MainMenu")->setActive(true);
        state = MainMenu;
    }
}

void GameManager::ControlsButtonClick() {
    if (changeScene("ControlsMenu")) {
        sManager->ControlsButtonClick();
        prevState = state;
        if (prevState == Pause) Tapioca::MainLoop::instance()->getScene("PauseMenu")->setActive(false);
        else
            Tapioca::MainLoop::instance()->getScene("MainMenu")->setActive(false);
        state = Controls;
    }
}

void GameManager::ExitButtonClick() { Tapioca::MainLoop::instance()->exit(); }

void GameManager::increaseScore(int increasement) { levelScore += increasement; }

std::string GameManager::getCurrentLevelScene() { return "Level" + level; }
