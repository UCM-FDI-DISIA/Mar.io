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
    audios[InGameMusic]->pause(true);
}

void GameManager::onWin() {
    std::string levelName = "Level" + std::to_string(level);
    Tapioca::MainLoop::instance()->deleteScene(levelName);
    state = GameOver;
    if (level == 1) {
        std::string nextlevelName = "Level" + std::to_string(level+1);
        changeScene(nextlevelName);
        audios[InGameMusic]->playLooped();
        audios[WinMenuMusic]->pause(true);
    }
    else {
        changeScene("WinMenu");
        audios[InGameMusic]->pause(true);
        audios[WinMenuMusic]->playLooped();    
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
    audios = std::vector<Tapioca::AudioSourceComponent*>(Sounds_MAX);
    audios[Coin] = object->getScene()->getHandler("CoinSound")->getComponent<Tapioca::AudioSourceComponent>();
    audios[Walk] = object->getScene()->getHandler("WalkSound")->getComponent<Tapioca::AudioSourceComponent>();
    audios[MainMenuMusic] = object->getScene()->getHandler("MainMenuMusic")->getComponent<Tapioca::AudioSourceComponent>();
    audios[InGameMusic] = object->getScene()->getHandler("InGameMusic")->getComponent<Tapioca::AudioSourceComponent>();
    audios[WinMenuMusic] = object->getScene()->getHandler("WinMenuMusic")->getComponent<Tapioca::AudioSourceComponent>();
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
    levelScore = 0;
    if (changeScene("Level1")) {
        Tapioca::MainLoop::instance()->deleteScene("MainMenu");
       //level = 1;
        state = InGame;
        audios[MainMenuMusic]->pause(true);
        audios[InGameMusic]->playLooped();
        audios[WinMenuMusic]->pause(true);
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
        audios[MainMenuMusic]->playLooped();
        audios[InGameMusic]->pause(true);
        audios[WinMenuMusic]->pause(true);
    }
}

void GameManager::ReplayButtonClick() {
    if (changeScene("Level1")) {
        Tapioca::MainLoop::instance()->deleteScene("LoseMenu");
        Tapioca::MainLoop::instance()->deleteScene("PauseMenu");
        Tapioca::MainLoop::instance()->deleteScene("Level1");
        state = InGame;
        audios[MainMenuMusic]->pause(true);
        audios[InGameMusic]->playLooped();
        audios[WinMenuMusic]->pause(true);
    }
}


void GameManager::ContinueButtonClick() {
    Tapioca::MainLoop::instance()->deleteScene("PauseMenu");
    Tapioca::MainLoop::instance()->getScene("Level1")->setActive(true);
    state = InGame;
    audios[MainMenuMusic]->pause(true);
    audios[InGameMusic]->pause(false);
    audios[WinMenuMusic]->pause(true);
}

void GameManager::ToPause() {
    if (changeScene("PauseMenu")) {
        Tapioca::MainLoop::instance()->getScene("Level1")->setActive(false);
        state = Pause;
        audios[MainMenuMusic]->pause(true);
        audios[InGameMusic]->pause(true);
        audios[WinMenuMusic]->pause(true);
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
    }
    else {
        Tapioca::MainLoop::instance()->getScene("MainMenu")->setActive(true);
        state = MainMenu;
        audios[MainMenuMusic]->pause(false);
        audios[InGameMusic]->pause(true);
        audios[WinMenuMusic]->pause(true);
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
    }
}

void GameManager::ExitButtonClick() { Tapioca::MainLoop::instance()->exit(); }

void GameManager::increaseScore(int increasement) { levelScore += increasement; }

std::string GameManager::getCurrentLevelScene() { return "Level" + level; }
