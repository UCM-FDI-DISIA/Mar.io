#include "Enemy.h"
#include <Structure/GameObject.h>
#include "Structure/BasicBuilder.h"
#include "Components/Transform.h"
#include "Components/RigidBody.h"
#include "Health.h"

namespace MarIo {
template class JUEGO_API Tapioca::BasicBuilder<MarIo::Enemy>;

Enemy::Enemy() : trans(nullptr), rigidBody(nullptr) { }

Enemy::~Enemy() { }

bool Enemy::initComponent(const CompMap& variables) { return true; }

void Enemy::start() {
    health = object->getComponent<Health>();
    trans = object->getComponent<Tapioca::Transform>();
    rigidBody = object->getComponent<Tapioca::RigidBody>();
}

void Enemy::update(const uint64_t deltaTime) { }

void Enemy::fixedUpdate() { }

void Enemy::handleEvent(std::string const& id, void* info) { }
}
