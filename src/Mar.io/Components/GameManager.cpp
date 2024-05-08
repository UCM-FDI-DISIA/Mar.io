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
    if (changeScene("LoseMenu")) {
        Tapioca::logInfo("GameManager: Muelto.");
        deleteCurrentLevel();
        state = GameOver;
        audios[InGameMusic]->pause(true);
        audios[GameOverMenuMusic]->playLooped();
        audios[Walk]->pause(true);
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
        state = GameOver;
        if (!changeScene("WinMenu")) Tapioca::MainLoop::instance()->exit();
        audios[InGameMusic]->pause(true);
        audios[WinMenuMusic]->playLooped();
        audios[GameOverMenuMusic]->pause(true);
    }
    else
    {
        state = InGame;
        if (!addLevel()) Tapioca::MainLoop::instance()->exit();
        audios[InGameMusic]->playLooped();
        audios[WinMenuMusic]->pause(true);
        audios[GameOverMenuMusic]->pause(true);
    }
    audios[Walk]->pause(true);
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
    audios[MainMenuMusic] = object->getScene()->getHandler("MainMenuMusic")->getComponent<Tapioca::AudioSourceComponent>();
    audios[InGameMusic] = object->getScene()->getHandler("InGameMusic")->getComponent<Tapioca::AudioSourceComponent>();
    audios[WinMenuMusic] = object->getScene()->getHandler("WinMenuMusic")->getComponent<Tapioca::AudioSourceComponent>();
    audios[GameOverMenuMusic] = object->getScene()->getHandler("GameOverMenuMusic")->getComponent<Tapioca::AudioSourceComponent>();
    audios[Jump] = object->getScene()->getHandler("JumpSound")->getComponent<Tapioca::AudioSourceComponent>();
    audios[Jump]->setVolume(0.2f);
    audios[Fist] = object->getScene()->getHandler("FistSound")->getComponent<Tapioca::AudioSourceComponent>();
    audios[Heal] = object->getScene()->getHandler("LifeUpSound")->getComponent<Tapioca::AudioSourceComponent>();
    audios[Invincibility] = object->getScene()->getHandler("InvincibilitySound")->getComponent<Tapioca::AudioSourceComponent>();

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
    if (id == "ev_Jump") audios[Jump]->playOnce();
    if (id == "ev_Fist") audios[Fist]->playOnce();
    if (id == "ev_Walk") {     
        audios[Walk]->pause(false);
        audios[Walk]->playLooped();
    }
    if (id == "ev_NotWalk") audios[Walk]->pause(true);
    if (id == "ev_Heal") audios[Heal]->playOnce();
    if (id == "ev_Invincibility") audios[Invincibility]->playOnce();
}


bool GameManager::changeScene(std::string const& scene) const {
    return Tapioca::SceneLoader::instance()->loadScene(scene);
}

void GameManager::MainMenuButtonClick() {
    level = 1;
    levelScore = 0;
    if (addLevel()) {
        Tapioca::MainLoop::instance()->deleteScene("MainMenu");
        state = InGame;
        audios[MainMenuMusic]->pause(true);
        audios[InGameMusic]->playLooped();
        audios[WinMenuMusic]->pause(true);
        audios[GameOverMenuMusic]->pause(true);
    }
}


void GameManager::ReturnButtonClick() {
    if (changeScene("MainMenu")) {
        deleteCurrentLevel();
        Tapioca::MainLoop::instance()->deleteScene("PauseMenu");
        Tapioca::MainLoop::instance()->deleteScene("WinMenu");
        Tapioca::MainLoop::instance()->deleteScene("LoseMenu");
        state = MainMenu;
        audios[MainMenuMusic]->playLooped();
        audios[InGameMusic]->pause(true);
        audios[WinMenuMusic]->pause(true);
        audios[GameOverMenuMusic]->pause(true);
    }
}

void GameManager::ReplayButtonClick() {
    if (addLevel()) {
        Tapioca::MainLoop::instance()->deleteScene("LoseMenu");
        Tapioca::MainLoop::instance()->deleteScene("PauseMenu");
        deleteCurrentLevel();
        state = InGame;
        audios[MainMenuMusic]->pause(true);
        audios[InGameMusic]->playLooped();
        audios[WinMenuMusic]->pause(true);
        audios[GameOverMenuMusic]->pause(true);
    }
}


void GameManager::ContinueButtonClick() {
    Tapioca::MainLoop::instance()->deleteScene("PauseMenu");
    std::string levelName = "Level" + std::to_string(level);
    Tapioca::MainLoop::instance()->getScene(levelName)->setActive(true);
    state = InGame;
    audios[MainMenuMusic]->pause(true);
    audios[InGameMusic]->pause(false);
    audios[WinMenuMusic]->pause(true);
    audios[GameOverMenuMusic]->pause(true);
}

void GameManager::ToPause() {
    if (changeScene("PauseMenu")) {
        std::string levelName = "Level" + std::to_string(level);
        Tapioca::MainLoop::instance()->getScene(levelName)->setActive(false);
        state = Pause;
        audios[MainMenuMusic]->pause(true);
        audios[InGameMusic]->pause(true);
        audios[WinMenuMusic]->pause(true);
        audios[GameOverMenuMusic]->pause(true);
    }
}

void GameManager::ControlsReturn() {
    Tapioca::MainLoop::instance()->deleteScene("ControlsMenu");
    if (prevState == Pause) {
        Tapioca::MainLoop::instance()->getScene("PauseMenu")->setActive(true);
        state = Pause;
        audios[MainMenuMusic]->pause(true);
        audios[InGameMusic]->pause(true);
        audios[WinMenuMusic]->pause(true);
        audios[GameOverMenuMusic]->pause(true);
    }
    else {
        Tapioca::MainLoop::instance()->getScene("MainMenu")->setActive(true);
        state = MainMenu;
        audios[MainMenuMusic]->pause(false);
        audios[InGameMusic]->pause(true);
        audios[WinMenuMusic]->pause(true);
        audios[GameOverMenuMusic]->pause(true);
    }
}

void GameManager::ControlsButtonClick() {
    if (changeScene("ControlsMenu")) {
        prevState = state;
        if (prevState == Pause) Tapioca::MainLoop::instance()->getScene("PauseMenu")->setActive(false);
        else Tapioca::MainLoop::instance()->getScene("MainMenu")->setActive(false);
        state = Controls;
        audios[InGameMusic]->pause(true);
        audios[WinMenuMusic]->pause(true);
        audios[GameOverMenuMusic]->pause(true);
    }
}

void GameManager::ExitButtonClick() { Tapioca::MainLoop::instance()->exit(); }

void GameManager::increaseScore(int increasement) { levelScore += increasement; }

std::string GameManager::getCurrentLevelScene() { return "Level" + level; }
