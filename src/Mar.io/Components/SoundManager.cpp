#include "SoundManager.h"
#include <iomanip>
#include <functional>
#include <fstream>
#include "SceneLoader.h"
#include "PhysicsManager.h"
#include "Structure/MainLoop.h"
#include "Structure/Scene.h"
#include "Structure/GameObject.h"
#include "Structure/Component.h"
#include "Components/AudioSourceComponent.h"
#include "GameManager.h"

void SoundManager::start() {
    audios = std::vector<Tapioca::AudioSourceComponent*>(Sounds_MAX);
    Tapioca::GameObject* s;
    s = object->getScene()->getHandler("WalkSound");
    audios[Walk] = s == nullptr ? nullptr :s->getComponent<Tapioca::AudioSourceComponent>();
    s = object->getScene()->getHandler("JumpSound");

    audios[Jump] = s == nullptr ? nullptr : s->getComponent<Tapioca::AudioSourceComponent>();
    if (audios[Jump] != nullptr) audios[Jump]->setVolume(0.2f);

    s = object->getScene()->getHandler("HurtSound");
    audios[Hurt] = s == nullptr ? nullptr : s->getComponent<Tapioca::AudioSourceComponent>();
    s = object->getScene()->getHandler("FistSound");
    audios[Fist] = s == nullptr ? nullptr : s->getComponent<Tapioca::AudioSourceComponent>();

    s = object->getScene()->getHandler("MainMenuMusic");
    audios[MainMenuMusic] = s == nullptr ? nullptr : s->getComponent<Tapioca::AudioSourceComponent>();
    s = object->getScene()->getHandler("InGameMusic");
    audios[InGameMusic] = s == nullptr ? nullptr : s->getComponent<Tapioca::AudioSourceComponent>();
    s = object->getScene()->getHandler("WinMenuMusic");
    audios[WinMenuMusic] = s == nullptr ? nullptr : s->getComponent<Tapioca::AudioSourceComponent>();
    s = object->getScene()->getHandler("GameOverMenuMusic");
    audios[GameOverMenuMusic] = s == nullptr ? nullptr : s->getComponent<Tapioca::AudioSourceComponent>();
}

void SoundManager::handleEvent(std::string const& id, void* info) {

    if (id == "ev_Jump") {
        if (audios[Jump] != nullptr) audios[Jump]->playOnce();
    }
    if (id == "ev_Fist") {
        if (audios[Fist] != nullptr) audios[Fist]->playOnce();
    }
    if (id == "ev_Walk") {
        if (audios[Walk] != nullptr) {
            audios[Walk]->pause(false);
            audios[Walk]->playLooped();
        }
    }
    if (id == "ev_NotWalk") {
        if (audios[Walk] != nullptr) audios[Walk]->pause(true);
    }
    if (id == "ev_Hurt") {
        if (audios[Hurt] != nullptr) audios[Hurt]->playOnce();
    }
}

void SoundManager::onWin(int const& level, int const& n_level) {
    if (audios[Walk] != nullptr) audios[Walk]->pause(true);
    if (level > n_level) {
        if (audios[InGameMusic] != nullptr) audios[InGameMusic]->pause(true);
        if (audios[WinMenuMusic] != nullptr) audios[WinMenuMusic]->playLooped();
        if (audios[GameOverMenuMusic] != nullptr) audios[GameOverMenuMusic]->pause(true);
    }
    else {
        if (audios[InGameMusic] != nullptr) audios[InGameMusic]->playLooped();
        if (audios[WinMenuMusic] != nullptr) audios[WinMenuMusic]->pause(true);
        if (audios[GameOverMenuMusic] != nullptr) audios[GameOverMenuMusic]->pause(true);
    }
}

void SoundManager::onGameOver() {
    if (audios[InGameMusic] != nullptr) audios[InGameMusic]->pause(true);
    if (audios[GameOverMenuMusic] != nullptr) audios[GameOverMenuMusic]->playLooped();
}

void SoundManager::MainMenuButtonClick() {
    if (audios[MainMenuMusic] != nullptr) audios[MainMenuMusic]->pause(true);
    if (audios[InGameMusic] != nullptr) audios[InGameMusic]->playLooped();
    if (audios[WinMenuMusic] != nullptr) audios[WinMenuMusic]->pause(true);
    if (audios[GameOverMenuMusic] != nullptr) audios[GameOverMenuMusic]->pause(true);
}

void SoundManager::ReturnButtonClick() {
    if (audios[MainMenuMusic] != nullptr) audios[MainMenuMusic]->playLooped();
    if (audios[InGameMusic] != nullptr) audios[InGameMusic]->pause(true);
    if (audios[WinMenuMusic] != nullptr) audios[WinMenuMusic]->pause(true);
    if (audios[GameOverMenuMusic] != nullptr) audios[GameOverMenuMusic]->pause(true);
}

void SoundManager::ReplayButtonClick() {
    if (audios[MainMenuMusic] != nullptr) audios[MainMenuMusic]->pause(true);
    if (audios[InGameMusic] != nullptr) audios[InGameMusic]->playLooped();
    if (audios[WinMenuMusic] != nullptr) audios[WinMenuMusic]->pause(true);
    if (audios[GameOverMenuMusic] != nullptr) audios[GameOverMenuMusic]->pause(true);
}

void SoundManager::ContinueButtonClick() {
    if (audios[MainMenuMusic] != nullptr) audios[MainMenuMusic]->pause(true);
    if (audios[InGameMusic] != nullptr) audios[InGameMusic]->pause(false);
    if (audios[WinMenuMusic] != nullptr) audios[WinMenuMusic]->pause(true);
    if (audios[GameOverMenuMusic] != nullptr) audios[GameOverMenuMusic]->pause(true);
}

void SoundManager::ToPause() {
    if (audios[MainMenuMusic] != nullptr) audios[MainMenuMusic]->pause(true);
    if (audios[InGameMusic] != nullptr) audios[InGameMusic]->pause(true);
    if (audios[WinMenuMusic] != nullptr) audios[WinMenuMusic]->pause(true);
    if (audios[GameOverMenuMusic] != nullptr) audios[GameOverMenuMusic]->pause(true);
}

void SoundManager::ControlsReturn(int prevState) {
    if (prevState == Pause) {
        if (audios[MainMenuMusic] != nullptr) audios[MainMenuMusic]->pause(true);
        if (audios[InGameMusic] != nullptr) audios[InGameMusic]->pause(true);
        if (audios[WinMenuMusic] != nullptr) audios[WinMenuMusic]->pause(true);
        if (audios[GameOverMenuMusic] != nullptr) audios[GameOverMenuMusic]->pause(true);
    }
    else {
        if (audios[MainMenuMusic] != nullptr) audios[MainMenuMusic]->pause(false);
        if (audios[InGameMusic] != nullptr) audios[InGameMusic]->pause(true);
        if (audios[WinMenuMusic] != nullptr) audios[WinMenuMusic]->pause(true);
        if (audios[GameOverMenuMusic] != nullptr) audios[GameOverMenuMusic]->pause(true);
    }
}

void SoundManager::ControlsButtonClick() {
    if (audios[InGameMusic] != nullptr) audios[InGameMusic]->pause(true);
    if (audios[WinMenuMusic] != nullptr) audios[WinMenuMusic]->pause(true);
    if (audios[GameOverMenuMusic] != nullptr) audios[GameOverMenuMusic]->pause(true);
}
