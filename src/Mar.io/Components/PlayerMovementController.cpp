#include "PlayerMovementController.h"
#include <Structure/GameObject.h>
#include <Components/Transform.h>
#include "Structure/BasicBuilder.h"
#include "Components/RigidBody.h"

namespace MarIo {
template class JUEGO_API Tapioca::BasicBuilder<MarIo::PlayerMovementController>;

PlayerMovementController::PlayerMovementController() : trans(nullptr), rigidBody(nullptr) { }

PlayerMovementController::~PlayerMovementController() { }

bool PlayerMovementController::initComponent(const CompMap& variables) { return true; }

void PlayerMovementController::start() { 
    trans = object->getComponent<Tapioca::Transform>(); 
    rigidBody = object->getComponent<Tapioca::RigidBody>();
}

void PlayerMovementController::update(const uint64_t deltaTime) {  }

void PlayerMovementController::fixedUpdate() {
    if (jump) {
        rigidBody->addImpulse(Tapioca::Vector3(0, 50, 0));
        jump = false;
    }
}

void PlayerMovementController::handleEvent(std::string const& id, void* info) {
    Tapioca::Vector3 movement;
    if (id == "ev_MOVEFORWARD") {
        movement += trans->forward();
    }
    else if (id == "ev_MOVELEFT") {
        movement -= trans->right();
    }
    else if (id == "ev_MOVEBACK") {
        movement -= trans->forward();
    }
    else if (id == "ev_MOVERIGHT") {
        movement += trans->right();
    }
    if (id == "ev_JUMP") 
    {
        if (jumps < 2 || grounded) {
            jump = true;
            grounded = false;
            jumps++;
        }   
    }
    if (id == "onCollisionEnter") {
        grounded = true;
        jumps = 0;
    }
    if (movement.magnitudeSquared() != 0) trans->translate(movement.getNormalized());
}
}

