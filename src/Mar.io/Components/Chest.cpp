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
    /*
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
    */
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
        //coins.push_back(coin);

        float angle = degree * i * 3.14f / 180.0f;   // Convertir a radianes
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
        object->getScene()->addObject(coin);
        coin->addComponents(
            {{"Transform", transformMap}, {"RigidBody", rigidBodyMap}, {"MeshRenderer", meshMap}, {"Coin", {}}});

        Tapioca::RigidBody* coinRb = coin->getComponent<Tapioca::RigidBody>();
        if (coinRb != nullptr) {
            coinRb->addForce(posWithinCircle * 100);
        }
        //coinRb->setTensor(Tapioca::Vector3(0, 1, 0));
    }
}

void Chest::creatOpenChest() {
    Tapioca::MeshRenderer* meshRenderer = object->getComponent<Tapioca::MeshRenderer>();
    if (meshRenderer != nullptr) {
        meshRenderer->setMesh("models/chest/OpenedChest.mesh");
    }
    open = true;
}
