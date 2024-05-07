#include "Enemy.h"
#include "Structure/GameObject.h"
#include "Structure/BasicBuilder.h"
#include "Components/Transform.h"
#include "Components/RigidBody.h"
#include "Fist.h"
#include "Health.h"
#include <iostream>

template class JUEGO_API Tapioca::BasicBuilder<Enemy>;

Enemy::Enemy() : health(nullptr), trans(nullptr), rigidBody(nullptr), tEnemy(-1) { }

Enemy::~Enemy() {
    health = nullptr;
    trans = nullptr;
    rigidBody = nullptr;
}

bool Enemy::initComponent(const CompMap& variables) {
    if (!setValueFromMap(tEnemy, "tEnemy", variables)) {
        Tapioca::logError("type: No se ha establecido tipo a realizar.");
        return false;
    }
    return true;
}

void Enemy::start() {
    health = object->getComponent<Health>();
    trans = object->getComponent<Tapioca::Transform>();
    rigidBody = object->getComponent<Tapioca::RigidBody>();
}

void Enemy::update(const uint64_t deltaTime) { }

void Enemy::fixedUpdate() { }

void Enemy::handleEvent(std::string const& id, void* info) {
    Tapioca::GameObject* obj = (Tapioca::GameObject*)info;

    if (id == "onCollisionEnter") {
        Tapioca::Transform* t = obj->getComponent<Tapioca::Transform>();
        // Caso no tortuga
        if (obj->getHandler() == "Player" && t->getPosition().y > trans->getPosition().y + 4 && tEnemy != TURTLE) {
            // daño por saltar encima enemigo
            std::cout << "salto\n";
            object->die();
        }
    }
    else if (id == "onCollisionStay") {
        Tapioca::Transform* t = obj->getComponent<Tapioca::Transform>();
        if (obj->getComponent<Fist>() != nullptr && obj->getComponent<Fist>()->isAttack()) {
            // daño por puñetazo a enemigo
            std::cout << "puño\n";
            object->die();
        }
    }
}
