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

template class JUEGO_API Tapioca::BasicBuilder<Chest>;

Chest::Chest() : open(false), nCoins(8), coins(), elapsedTime(0) { }

void Chest::update(const uint64_t deltaTime) {
    if (coins.size() > 0) {
        elapsedTime += deltaTime;
        if (elapsedTime > COINS_LIFE) {
            elapsedTime = 0;
            for (Tapioca::GameObject* coin : coins) {
                coin->die();
            }
            coins.clear();
        }
    }
}

bool Chest::initComponent(const CompMap& variables) { return true; }

void Chest::handleEvent(std::string const& id, void* info) {
    //TODO: luego se cambia id por meleAttack
    if (id == "onCollisionStay" && !open) {
        Tapioca::GameObject* playerChild = (Tapioca::GameObject*)info;
        Fist* fist = playerChild->getComponent<Fist>();
        if (fist != nullptr) {
            if (fist->isAttack()) {
                Tapioca::GameObject* player = playerChild->getComponent<Tapioca::Transform>()->getParent()->getObject();
                Score* score = player->getComponent<Score>();
                if (score != nullptr) score->increaseScore(nCoins);
            }
        }
        createCoins(nCoins);
        creatOpenChest();
    }
}

void Chest::createCoins(int n) {
    Tapioca::Vector3 pos = object->getComponent<Tapioca::Transform>()->getPosition();

    float degree = 360.0f / n;
    for (int i = 0; i < n; ++i) {
        Tapioca::GameObject* coin = new Tapioca::GameObject();
        coins.push_back(coin);

        float angle = degree * i * 3.14f / 180.0f;   // Convertir a radianes
        // Calcular el seno y el coseno
        float sinValue = std::sinf(angle);
        float cosValue = std::cosf(angle);
        Tapioca::Vector3 posWithinCircle = Tapioca::Vector3(sinValue, 1, cosValue);

        CompMap transformMap;
        transformMap["positionX"] = pos.x + posWithinCircle.x * 5;
        transformMap["positionY"] = pos.y + posWithinCircle.y * 5;
        transformMap["positionZ"] = pos.z + posWithinCircle.z * 5;
        const float COIN_SCALE = 0.5f;
        transformMap["scaleX"] = COIN_SCALE;
        transformMap["scaleY"] = COIN_SCALE;
        transformMap["scaleZ"] = COIN_SCALE;

        CompMap rigidBodyMap;
        rigidBodyMap["isTrigger"] = true;
        rigidBodyMap["mass"] = 1.0f;
        rigidBodyMap["damping"] = 0.0f;
        rigidBodyMap["colShape"] = 0;
        rigidBodyMap["movementType"] = 0;
        rigidBodyMap["colliderScaleX"] = 4.0f;
        rigidBodyMap["colliderScaleY"] = 4.0f;
        rigidBodyMap["colliderScaleZ"] = 2.0f;
        rigidBodyMap["friction"] = 10.0f;
        rigidBodyMap["bounciness"] = 0.0f;

        CompMap meshMap;
        meshMap["meshName"] = "models/coin/coin.mesh";
        object->getScene()->addObject(coin);
        coin->addComponents(
            {{"Transform", transformMap}, {"RigidBody", rigidBodyMap}, {"MeshRenderer", meshMap}, {"Coin", {}}});

        Tapioca::RigidBody* coinRb = coin->getComponent<Tapioca::RigidBody>();
        if (coinRb != nullptr) {
            coinRb->addForce(posWithinCircle * 500);
        }
    }
}

void Chest::creatOpenChest() {
    Tapioca::MeshRenderer* meshRenderer = object->getComponent<Tapioca::MeshRenderer>();
    if (meshRenderer != nullptr) {
        meshRenderer->setMesh("models/chest/cofre.mesh");
    }
    open = true;
    //Tapioca::GameObject* chest = new Tapioca::GameObject();
    //Tapioca::Vector3 scale = transform->getGlobalScale();
    //Tapioca::Vector3 pos = transform->getGlobalPosition();

    //CompMap transformMap;
    //transformMap["positionX"] = pos.x;
    //transformMap["positionY"] = pos.y;
    //transformMap["positionZ"] = pos.z;
    //transformMap["scaleX"] = scale.x;
    //transformMap["scaleY"] = scale.y;
    //transformMap["scaleZ"] = scale.z;

    //CompMap rigidBodyMap;
    //rigidBodyMap["isTrigger"] = false;
    //rigidBodyMap["mass"] = 1.0f;
    //rigidBodyMap["damping"] = 0.4f;
    //rigidBodyMap["colShape"] = 0;
    //rigidBodyMap["movementType"] = 1;
    //rigidBodyMap["colliderScaleX"] = 3.7f;
    //rigidBodyMap["colliderScaleY"] = 3.0f;
    //rigidBodyMap["colliderScaleZ"] = 1.7f;
    //rigidBodyMap["friction"] = 1.0f;
    //rigidBodyMap["bounciness"] = 1.0f;

    //CompMap meshMap;
    //meshMap["meshName"] = "models/chest/cofre.mesh";

    //object->getScene()->addObject(chest);
    //chest->addComponents({{"Transform", transformMap}, {"RigidBody", rigidBodyMap}, {"MeshRenderer", meshMap}});
}
