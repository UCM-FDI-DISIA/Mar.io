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

GameManager::GameManager() : state(MainMenu), level(1), levelScore(0), prevState(MainMenu) { }

void GameManager::onGameOver() {
    Tapioca::logInfo("GameManager: Muelto.");
    Tapioca::MainLoop::instance()->deleteScene("Level1");
    state = GameOver;
    changeScene("LoseMenu");
}

void GameManager::onWin() {
    std::string levelName = "Level" + std::to_string(level);
    Tapioca::MainLoop::instance()->deleteScene(levelName);
    state = GameOver;
    if (level == 1) {
        std::string nextlevelName = "Level" + std::to_string(level+1);
        changeScene(nextlevelName);
    }
    else
    changeScene("WinMenu");
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
    audios = std::vector<Tapioca::AudioSourceComponent*>(Sounds_MAX);
    audios[Coin] = object->getScene()->getHandler("CoinSound")->getComponent<Tapioca::AudioSourceComponent>();
    audios[Walk] = object->getScene()->getHandler("WalkSound")->getComponent<Tapioca::AudioSourceComponent>();

    changeScene("MainMenu");
    state = MainMenu;
    prevState = MainMenu;
}

void GameManager::update(const uint64_t deltaTime) { }

void GameManager::handleEvent(std::string const& id, void* info) {
    if (id == "ev_Pause") {
        if (state == MainMenu) Tapioca::MainLoop::instance()->exit();
        if (state == InGame) ToPause();
        else if (state == Pause) ContinueButtonClick();
        else if (state == Controls) ControlsReturn();
    }
    if (id == "ev_GameOver") onGameOver();
    if (id == "ev_Win") onWin();

    if (id == "ev_Coin") audios[Coin]->playOnce();
    /*else if (id == "ev_Walk") audios[Walk]->playOnce();*/
}


bool GameManager::changeScene(std::string const& scene) const {
    return Tapioca::SceneLoader::instance()->loadScene(scene);
}

void GameManager::MainMenuButtonClick() {
    levelScore = 0;
    if (changeScene("Level1")) {
        Tapioca::MainLoop::instance()->deleteScene("MainMenu");
       //level = 1;
        state = InGame;
    }
}


void GameManager::ReturnButtonClick() {
    if (changeScene("MainMenu")) {
        std::string levelName = "Level" + std::to_string(level);
        Tapioca::MainLoop::instance()->deleteScene(levelName);
        level = 1;
        Tapioca::MainLoop::instance()->deleteScene("PauseMenu");
        Tapioca::MainLoop::instance()->deleteScene("WinMenu");
        Tapioca::MainLoop::instance()->deleteScene("LoseMenu");
        state = MainMenu;
    }
}

void GameManager::ReplayButtonClick() {
    if (changeScene("Level1")) {
        Tapioca::MainLoop::instance()->deleteScene("LoseMenu");
        Tapioca::MainLoop::instance()->deleteScene("PauseMenu");
        Tapioca::MainLoop::instance()->deleteScene("Level1");
        state = InGame;
    }
}


void GameManager::ContinueButtonClick() {
    Tapioca::MainLoop::instance()->deleteScene("PauseMenu");
    Tapioca::MainLoop::instance()->getScene("Level1")->setActive(true);
    state = InGame;
}

void GameManager::ToPause() {
    if (changeScene("PauseMenu")) {
        Tapioca::MainLoop::instance()->getScene("Level1")->setActive(false);
        state = Pause;
    }
}

void GameManager::ControlsReturn() {
    Tapioca::MainLoop::instance()->deleteScene("ControlsMenu");
    if (prevState == Pause) {
        Tapioca::MainLoop::instance()->getScene("PauseMenu")->setActive(true);
        state = Pause;
    }
    else {
        Tapioca::MainLoop::instance()->getScene("MainMenu")->setActive(true);
        state = MainMenu;
    }
}

void GameManager::ControlsButtonClick() {
    if (changeScene("ControlsMenu")) {
        prevState = state;
        if (prevState == Pause) Tapioca::MainLoop::instance()->getScene("PauseMenu")->setActive(false);
        else Tapioca::MainLoop::instance()->getScene("MainMenu")->setActive(false);
        state = Controls;
    }
}

void GameManager::ExitButtonClick() { Tapioca::MainLoop::instance()->exit(); }

void GameManager::increaseScore(int increasement) { levelScore += increasement; }

std::string GameManager::getCurrentLevelScene() { return "Level" + level; }
