#include "feetDamage.h"
#include "Structure/GameObject.h"
#include "Structure/BasicBuilder.h"
#include "Components/Transform.h"
#include "Components/RigidBody.h"
#include "Fist.h"
#include "Health.h"
#include <iostream>
#include "PlayerMovementController.h"
#include "Enemy.h"

template class JUEGO_API Tapioca::BasicBuilder<FeetDamage>;

FeetDamage::FeetDamage() : health(nullptr), trans(nullptr), rigidBody(nullptr), heal(1) { }

FeetDamage::~FeetDamage() {
    health = nullptr;
    trans = nullptr;
    rigidBody = nullptr;
}

bool FeetDamage::initComponent(const CompMap& variables) { return true; }

void FeetDamage::start() {
    health = object->getComponent<Health>();
    trans = object->getComponent<Tapioca::Transform>();
    rigidBody = object->getComponent<Tapioca::RigidBody>();
}

void FeetDamage::update(const uint64_t deltaTime) { }

void FeetDamage::fixedUpdate() { }

void FeetDamage::handleEvent(std::string const& id, void* info) {
    if (id == "onCollisionStay" || id == "onCollisionEnter") {
        Tapioca::GameObject* object = (Tapioca::GameObject*)info;
        if (object != nullptr && object->getComponent<PlayerMovementController>() == nullptr) {
            Health* health = object->getComponent<Health>();
            Enemy* enemy = object->getComponent<Enemy>();
            if (health != nullptr && enemy != nullptr && enemy->getEnemyType() != TURTLE) {
                object->die();
            }
        }
    }
}
