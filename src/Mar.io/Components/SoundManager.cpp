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

SoundManager::SoundManager() { }

bool SoundManager::initComponent(const CompMap& variables) { return true; }

void SoundManager::start() {
    audios = std::vector<Tapioca::AudioSourceComponent*>(Sounds_MAX);
    audios[Coin] = object->getScene()->getHandler("CoinSound")->getComponent<Tapioca::AudioSourceComponent>();
    audios[Walk] = object->getScene()->getHandler("WalkSound")->getComponent<Tapioca::AudioSourceComponent>();
    audios[Jump] = object->getScene()->getHandler("JumpSound")->getComponent<Tapioca::AudioSourceComponent>();
    audios[Jump]->setVolume(0.2f);
    audios[Hurt] = object->getScene()->getHandler("HurtSound")->getComponent<Tapioca::AudioSourceComponent>();
    audios[Fist] = object->getScene()->getHandler("FistSound")->getComponent<Tapioca::AudioSourceComponent>();
    audios[Heal] = object->getScene()->getHandler("LifeUpSound")->getComponent<Tapioca::AudioSourceComponent>();
    audios[Invincibility] =
        object->getScene()->getHandler("InvincibilitySound")->getComponent<Tapioca::AudioSourceComponent>();

    GameManager::instance()->changeScene("GameManager");
}

void SoundManager::update(const uint64_t deltaTime) { }

void SoundManager::handleEvent(std::string const& id, void* info) {

    if (id == "ev_Coin") {
        if (audios[Coin] != nullptr) audios[Coin]->playOnce();
    }
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
    if (id == "ev_Heal") {
        if (audios[Heal] != nullptr) audios[Heal]->playOnce();
    }
    if (id == "ev_Invincibility") {
        if (audios[Invincibility] != nullptr) audios[Invincibility]->playOnce();
    }
    if (id == "ev_Hurt") {
        if (audios[Hurt] != nullptr) audios[Hurt]->playOnce();
    }
}