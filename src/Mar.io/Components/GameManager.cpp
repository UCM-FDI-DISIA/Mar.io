#include "GameManager.h"
#include "SceneLoader.h"
#include "LuaManager.h"
#include "PhysicsManager.h"
#include "Structure/MainLoop.h"
#include <iomanip>
#include <functional>
#include <fstream>
#include "Structure/Scene.h"

template class JUEGO_API Tapioca::Singleton<GameManager>;

template<>
GameManager* Tapioca::Singleton<GameManager>::instance_ = nullptr;

GameManager::GameManager() : state(MainMenu), level(1), levelScore(0) { }

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
    changeScene("WinMenu");
}

void GameManager::registerLuaFunctions() {
    Tapioca::LuaManager* lua = Tapioca::LuaManager::instance();
    lua->addLuaFunction("MainMenuButtonClick", [this]() { MainMenuButtonClick(); });
    lua->addLuaFunction("ReturnButtonClick", [this]() { ReturnButtonClick(); });
    lua->addLuaFunction("ReplayButtonClick", [this]() { ReplayButtonClick(); });
    lua->addLuaFunction("ContinueButtonClick", [this]() { ContinueButtonClick(); });
    lua->addLuaFunction("ControlsButtonClick", [this]() { ControlsButtonClick(); });
    lua->addLuaFunction("ControlsToPauseButtonClick", [this]() { ControlsToPause(); });
}

bool GameManager::initComponent(const CompMap& variables) {
    registerLuaFunctions();
    return true;
}

void GameManager::start() {
    //Tapioca::PhysicsManager::instance()->activateDebug(true);
    changeScene("MainMenu");
    state = MainMenu;
}

void GameManager::update(const uint64_t deltaTime) { }

void GameManager::handleEvent(std::string const& id, void* info) {
    if (id == "ev_Pause") {
        if (state == InGame) {
            ToPause();
        }
        else if (state == Pause) {
            ContinueButtonClick();
        }
        else if (state == Controls) {
            ControlsToPause();
        }
    }
    if (id == "ev_GameOver") {
        onGameOver();
    }
    if (id == "ev_Win") {
        onWin();
    }
}


bool GameManager::changeScene(std::string const& scene) const {
    return Tapioca::SceneLoader::instance()->loadScene(scene);
}

void GameManager::MainMenuButtonClick() {
    Tapioca::MainLoop::instance()->deleteScene("MainMenu");
    levelScore = 0;
    changeScene("Level1");
    state = InGame;
}


void GameManager::ReturnButtonClick() {
    std::string levelName = "Level" + std::to_string(level);
    Tapioca::MainLoop::instance()->deleteScene(levelName);
    level = 0;
    Tapioca::MainLoop::instance()->deleteScene("PauseMenu");
    Tapioca::MainLoop::instance()->deleteScene("WinMenu");
    Tapioca::MainLoop::instance()->deleteScene("LoseMenu");
    state = MainMenu;
    changeScene("MainMenu");
}

void GameManager::ReplayButtonClick() {
    Tapioca::MainLoop::instance()->deleteScene("LoseMenu");
    Tapioca::MainLoop::instance()->deleteScene("PauseMenu");
    Tapioca::MainLoop::instance()->deleteScene("Level1");
    state = InGame;
    changeScene("Level1");
}


void GameManager::ContinueButtonClick() { 
    Tapioca::MainLoop::instance()->deleteScene("PauseMenu");
    Tapioca::MainLoop::instance()->getScene("Level1")->setActive(true);
    state = InGame;
}

void GameManager::ToPause() { 
    Tapioca::MainLoop::instance()->getScene("Level1")->setActive(false);
    changeScene("PauseMenu");
    state = Pause;
}

void GameManager::ControlsToPause() {
    Tapioca::MainLoop::instance()->deleteScene("ControlsMenu");
    Tapioca::MainLoop::instance()->getScene("PauseMenu")->setActive(true);
    state = Pause;
}

void GameManager::ControlsButtonClick() {
    Tapioca::MainLoop::instance()->getScene("PauseMenu")->setActive(false);
    changeScene("ControlsMenu");
    state = Controls;
}

void GameManager::increaseScore(int increasement) { 
    levelScore += increasement;
}
