#include "GameManager.h"
#include "SceneLoader.h"
#include <iomanip>

template class JUEGO_API Tapioca::Singleton<MarIo::GameManager>;

template<>
MarIo::GameManager* Tapioca::Singleton<MarIo::GameManager>::instance_ = nullptr;

namespace MarIo {

GameManager::GameManager() : state(MainMenu) { }

bool initComponent(const CompMap& variables) { return false; }

bool GameManager::initComponent(const CompMap& variables) {
    return true;
}

void GameManager::start() { state = InGame; }

void GameManager::update(const uint64_t deltaTime) { }

void GameManager::handleEvent(std::string const& id, void* info) {
    /*if (id == "ev_Pause") {
        changeScene("PauseMenu.lua");
    }*/
    if (id == "ev_GameOver") {
        onGameOver();
    }
}


void GameManager::onGameOver() {
    Tapioca::logInfo("GameManager: Muelto.");
}

void GameManager::onWin() { }

bool GameManager::changeScene(std::string const& scene) const {
    return Tapioca::SceneLoader::instance()->loadScene(scene);
}


}