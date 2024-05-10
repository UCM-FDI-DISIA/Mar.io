#include "Chest.h"
#include <cmath>
#include "Structure/GameObject.h"
#include "Structure/BasicBuilder.h"
#include "Components/Transform.h"
#include "Components/RigidBody.h"
#include "Components/MeshRenderer.h"
#include "Fist.h"
#include "Coin.h"
#include "Structure/Scene.h"
#include "Score.h"

Chest::Chest() : open(false), nCoins(8) { }

bool Chest::initComponent(const CompMap& variables) {
    if (!setValueFromMap(nCoins, "nCoins", variables)) {
        Tapioca::logInfo(("Chest: No se ha establecido el numero de monedas que suelta el cofre. Se establece a " +
                          std::to_string(nCoins) + " por defecto.")
                             .c_str());
    }
    return true;
}

void Chest::createCoins(int n) {
    Tapioca::Vector3 pos = object->getComponent<Tapioca::Transform>()->getGlobalPosition();

    float degree = 360.0f / n;
    for (int i = 0; i < n; ++i) {
        Tapioca::GameObject* coin = new Tapioca::GameObject();

        float angle = degree * i * (float)M_PI / 180.0f;   // Convertir a radianes
        // Calcular el seno y el coseno
        float sinValue = std::sinf(angle);
        float cosValue = std::cosf(angle);
        Tapioca::Vector3 posWithinCircle = Tapioca::Vector3(sinValue, 2, cosValue);

        CompMap transformMap;
        transformMap["positionX"] = pos.x + posWithinCircle.x;
        transformMap["positionY"] = pos.y + posWithinCircle.y;
        transformMap["positionZ"] = pos.z + posWithinCircle.z;
        const float COIN_SCALE = 1.0f;
        transformMap["scaleX"] = COIN_SCALE;
        transformMap["scaleY"] = COIN_SCALE;
        transformMap["scaleZ"] = COIN_SCALE;

        CompMap rigidBodyMap;
        rigidBodyMap["isTrigger"] = false;
        rigidBodyMap["mass"] = 1.0f;
        rigidBodyMap["damping"] = 0.4f;
        rigidBodyMap["colShape"] = 0;
        rigidBodyMap["movementType"] = 0;
        rigidBodyMap["colliderScaleX"] = 0.5f;
        rigidBodyMap["colliderScaleY"] = 0.5f;
        rigidBodyMap["colliderScaleZ"] = 0.5f;
        rigidBodyMap["friction"] = 1.0f;
        rigidBodyMap["bounciness"] = 0.0f;

        CompMap meshMap;
        meshMap["meshName"] = "models/coin/Coin.mesh";

        CompMap audioMap;
        audioMap["is3D"] = true;
        audioMap["isLooping"] = false;
        audioMap["ispaused"] = true;
        audioMap["sourcepath"] = "coin.mp3";

        CompMap soundMap;
        soundMap["is3D"] = true;
        soundMap["isLooping"] = false;
        soundMap["ispaused"] = true;
        soundMap["routeS"] = "coin.mp3";
        soundMap["play"] = false;

        if (object->getScene()->addObject(coin)) {
            coin->addComponents({{"Transform", transformMap},
                                 {"RigidBody", rigidBodyMap},
                                 {"MeshRenderer", meshMap},
                                 {"AudioSourceComponent", audioMap},
                                 {"SoundObjectDie", soundMap},
                                 {"Coin", {}}});

            Tapioca::RigidBody* coinRb = coin->getComponent<Tapioca::RigidBody>();
            if (coinRb != nullptr) {
                coinRb->addForce(posWithinCircle * 100);
                coinRb->setTensor(Tapioca::Vector3(0, 1, 0));
            }
        }
    }
}

void Chest::openChest() {
    if (!open) {
        open = true;
        createCoins(nCoins);
        Tapioca::MeshRenderer* meshRenderer = object->getComponent<Tapioca::MeshRenderer>();
        if (meshRenderer != nullptr) {
            meshRenderer->setMesh("models/chest/OpenedChest.mesh");
        }
    }
}
