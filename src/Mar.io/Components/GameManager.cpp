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

GameManager::GameManager() : state(MainMenu), level(0), levelPuntuaction(0) { }

void GameManager::onGameOver() {
    Tapioca::logInfo("GameManager: Muelto.");
    std::string levelName = "Nivel" + std::to_string(level);
    Tapioca::MainLoop::instance()->deleteScene(levelName);
    changeScene("LoseMenu");
}

void GameManager::onWin() {
    std::string levelName = "Nivel" + std::to_string(level);
    Tapioca::MainLoop::instance()->deleteScene(levelName);
    changeScene("WinMenu");
}

void GameManager::registerLuaFunctions() {
    Tapioca::LuaManager* lua = Tapioca::LuaManager::instance();
    lua->addLuaFunction("MainMenuButtonClick", [this]() { MainMenuButtonClick(); });
    lua->addLuaFunction("NextLevelButtonClick", [this]() { NextLevelButtonClick(); });
    lua->addLuaFunction("ReturnButtonClick", [this]() { ReturnButtonClick(); });
    lua->addLuaFunction("ReplayButtonClick", [this]() { ReplayButtonClick(); });
    lua->addLuaFunction("ContinueButtonClick", [this]() { ContinueButtonClick(); });
}

bool initComponent(const CompMap& variables) { return false; }

bool GameManager::initComponent(const CompMap& variables) {
    registerLuaFunctions();
    return true;
}

void GameManager::start() {
    Tapioca::PhysicsManager::instance()->activateDebug(true);
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
    }
    if (id == "ev_GameOver") {
        onGameOver();
    }
    if (id == "ev_Win") {
        onWin();
    }
}

void GameManager::nextLevel() {
    levelPuntuaction = 0;
    std::string levelName = "Nivel" + std::to_string(level);
    Tapioca::MainLoop::instance()->deleteScene(levelName);
    level++;
    if (level > N_LEVELS) {
        changeScene("MainMenu");
    }
    else {
        std::string levelName = "Nivel" + std::to_string(level);
        changeScene(levelName);
    }
}

bool GameManager::changeScene(std::string const& scene) const {
    return Tapioca::SceneLoader::instance()->loadScene(scene);
}

void GameManager::MainMenuButtonClick() {
    Tapioca::MainLoop::instance()->deleteScene("MainMenu");
    //nextLevel();
    changeScene("GameMap");
    state = InGame;
}

void GameManager::NextLevelButtonClick() { nextLevel(); }

void GameManager::ReturnButtonClick() {
    std::string levelName = "Nivel" + std::to_string(level);
    Tapioca::MainLoop::instance()->deleteScene(levelName);
    level = 0;
    Tapioca::MainLoop::instance()->deleteScene("PauseMenu");
    Tapioca::MainLoop::instance()->deleteScene("WinMenu");
    Tapioca::MainLoop::instance()->deleteScene("LoseMenu");
    changeScene("MainMenu");
}

void GameManager::ReplayButtonClick() {
    Tapioca::MainLoop::instance()->deleteScene("LoseMenu");
    Tapioca::MainLoop::instance()->deleteScene("PauseMenu");
    std::string levelName = "Nivel" + std::to_string(level);
    Tapioca::MainLoop::instance()->deleteScene(levelName);
    changeScene(levelName);
}


void GameManager::ContinueButtonClick() { 
    Tapioca::MainLoop::instance()->deleteScene("PauseMenu");
    std::string levelName = "Nivel" + std::to_string(level);
    Tapioca::MainLoop::instance()->getScene(levelName)->setActive(true);
    state = InGame;
}
void GameManager::ToPause() { 
    std::string levelName = "Nivel" + std::to_string(level);
    Tapioca::MainLoop::instance()->getScene(levelName)->setActive(false);
    changeScene("PauseMenu");
    state = Pause;
}

void GameManager::increasePuntuaction(int increasement) { 
    levelPuntuaction += increasement;
}



