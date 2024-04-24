#include "GameManager.h"
#include "SceneLoader.h"
#include "LuaManager.h"
#include "Structure/MainLoop.h"
#include <iomanip>
#include <functional>
#include <fstream>

template class JUEGO_API Tapioca::Singleton<GameManager>;

template<>
GameManager* Tapioca::Singleton<GameManager>::instance_ = nullptr;

GameManager::GameManager() : state(MainMenu), level(0) { }

bool initComponent(const CompMap& variables) { return false; }

bool GameManager::initComponent(const CompMap& variables) {
    registerLuaFunctions();
    return true;
}

void GameManager::start() { 
    changeScene("MainMenu"); 
    state = MainMenu; 
}

void GameManager::update(const uint64_t deltaTime) { }

void GameManager::handleEvent(std::string const& id, void* info) {
    /*if (id == "ev_Pause") {
        changeScene("PauseMenu.lua");
    }*/
    if (id == "ev_GameOver") {
        onGameOver();
    }
}

void GameManager::onGameOver() { Tapioca::logInfo("GameManager: Muelto."); }

void GameManager::onWin() { }

bool GameManager::changeScene(std::string const& scene) const {
    return Tapioca::SceneLoader::instance()->loadScene(scene);
}

void GameManager::MainMenuButtonClick() { 
    Tapioca::MainLoop::instance()->deleteScene("MainMenu");
    nextLevel();
    state = InGame;
}

void GameManager::NextLevelButtonClick() { 
    nextLevel();
}

void GameManager::EndButtonClick() { 
    changeScene("MainMenu"); 
}

void GameManager::nextLevel() {
    level++;
    if (level > nLevels) {
    }
    else {
        std::string levelName = "Level"+std::to_string(level);
        changeScene(levelName);
    }
}

void GameManager::registerLuaFunctions() { 
    Tapioca::LuaManager* lua = Tapioca::LuaManager::instance();
    std::function<void()> hola = []() { Tapioca::logWarn("AAAAAAAAAAAAAA"); };
    lua->addLuaFunction("AAA",hola );
    lua->addLuaFunction("MainMenuButtonClick", [this]() { MainMenuButtonClick();});

}
