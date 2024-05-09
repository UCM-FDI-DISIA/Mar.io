#include "SoundObjectDie.h"
#include "Structure/GameObject.h"
#include "Structure/BasicBuilder.h"
#include "Components/Transform.h"
#include "Components/RigidBody.h"
#include "Structure/Scene.h"
#include "Components/AudioSourceComponent.h"

SoundObjectDie::SoundObjectDie()
    : routeS("coin.mp3"), is3D(false), isLooping(false), paused(true), play(false), playingS(false), timer(0) { }

bool SoundObjectDie::initComponent(const CompMap& variables) {
    if (!setValueFromMap(is3D, "is3D", variables)) {
        Tapioca::logInfo("AudioSourceComponent: No se encontro el valor de is3D. Se inicializo a false.");
    }
    if (!setValueFromMap(isLooping, "islooping", variables)) {
        Tapioca::logInfo("AudioSourceComponent: No se encontro el valor de islooping. Se inicializo a false.");
    }
    if (!setValueFromMap(paused, "ispaused", variables)) {
        Tapioca::logInfo("AudioSourceComponent: No se encontro el valor de ispaused. Se inicializo a true.");
    }
    if (!setValueFromMap(routeS, "routeS", variables)) {
        Tapioca::logInfo(
            ("SoundObjectDie: No se ha indicado la ruta del archivo " + (routeS) + " por defecto.").c_str());
    }
    if (!setValueFromMap(play, "play", variables)) {
        Tapioca::logInfo(
            ("SoundObjectDie: No se ha indicado si el valor de play: " + std::to_string(play) + " por defecto.")
                .c_str());
    }
    return true;
}

void SoundObjectDie::createSound() {
    Tapioca::Vector3 pos = object->getComponent<Tapioca::Transform>()->getPosition();

    CompMap transformMap;
    transformMap["positionX"] = pos.x;
    transformMap["positionY"] = pos.y;
    transformMap["positionZ"] = pos.z;

    CompMap soundMap;
    soundMap["is3D"] = is3D;
    soundMap["isLooping"] = isLooping;
    soundMap["ispaused"] = paused;
    soundMap["routeS"] = routeS;
    soundMap["play"] = true;

    CompMap audioMap;
    audioMap["is3D"] = is3D;
    audioMap["isLooping"] = isLooping;
    audioMap["ispaused"] = paused;
    audioMap["sourcepath"] = routeS;

    Tapioca::GameObject* soundEffect = new Tapioca::GameObject();
    object->getScene()->addObject(soundEffect);

    soundEffect->addComponents(
        {{"Transform", transformMap}, {"SoundObjectDie", soundMap}, {"AudioSourceComponent", audioMap}});
}

void SoundObjectDie::update(const uint64_t deltaTime) {
    if (play) {
        Tapioca::AudioSourceComponent* audioS = object->getComponent<Tapioca::AudioSourceComponent>();
        if (audioS != nullptr) {
            audioS->playOnce();
            play = false;
            playingS = true;
        }
    }
    if (playingS) {
        if (object->getComponent<Tapioca::AudioSourceComponent>()->hasFinished()) {
            object->die();
        }
    }
}
