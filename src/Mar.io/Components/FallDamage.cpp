#include "FallDamage.h"
#include <Structure/GameObject.h>
#include "Structure/BasicBuilder.h"
#include "Health.h"
#include "Components/Transform.h"
#include "PlayerMovementController.h"
#include "Components/RigidBody.h"

namespace MarIo {
template class JUEGO_API Tapioca::BasicBuilder<MarIo::FallDamage>;

FallDamage::FallDamage() : health(nullptr), trans(nullptr), rigidBody(nullptr), playerMC(nullptr) { }

FallDamage::~FallDamage() { }

bool FallDamage::initComponent(const CompMap& variables) { return true; }

void FallDamage::start() {
    health = object->getComponent<Health>();
    trans = object->getComponent<Tapioca::Transform>();
    initPos = trans->getPosition();
    prevPos = trans->getPosition();
    rigidBody = object->getComponent<Tapioca::RigidBody>();
    playerMC = object->getComponent<PlayerMovementController>();
}

void FallDamage::update(const uint64_t deltaTime) {
    // Timer para registrar prev pos
    time += deltaTime;
    if (time > timeNewPos && playerMC->getGrounded() && rigidBody->getVelocity().y < 0.05f &&
        rigidBody->getVelocity().y > -0.05f) {
        prevPos = Tapioca::Vector3(trans->getPosition().x, trans->getPosition().y + 5, trans->getPosition().z);
        time = 0;
    }

    // Se cambiará la altura al caer por elementos como el abismo
    if (trans->getPosition().y < -15) {
        health->loseHP(health->getHP());

        // GAME OVER (healthg == 0)
        //trans->setPosition(initPos);
        trans->setPosition(prevPos);
        playerMC->reset();
    }
}

void FallDamage::fixedUpdate() { }

void FallDamage::handleEvent(std::string const& id, void* info) { }
}
