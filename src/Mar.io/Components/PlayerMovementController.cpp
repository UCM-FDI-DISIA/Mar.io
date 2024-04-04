#include "PlayerMovementController.h"
#include <Structure/GameObject.h>
#include <Components/Transform.h>
#include "Structure/BasicBuilder.h"
#include "Components/RigidBody.h"

namespace MarIo {
template class JUEGO_API Tapioca::BasicBuilder<MarIo::PlayerMovementController>;

PlayerMovementController::PlayerMovementController() : trans(nullptr),rigidBody(nullptr), moveX(0), moveZ(0), speed(10) { }

PlayerMovementController::~PlayerMovementController() { }

bool PlayerMovementController::initComponent(const CompMap& variables) { return true; }

void PlayerMovementController::start() {
    trans = object->getComponent<Tapioca::Transform>();
    rigidBody = object->getComponent<Tapioca::RigidBody>();
}

void PlayerMovementController::update(const uint64_t deltaTime) { }

void PlayerMovementController::handleEvent(std::string const& id, void* info) {
    if (id == "ev_MOVEFORWARD") {
        moveZ = -1;
    }
    else if (id == "ev_MOVEBACK") {
        moveZ = 1;
    }
    else if (id == "ev_MOVEFORWARDEND" ) {
        moveZ = 0;
    }
    else if (id == "ev_MOVEBACKEND") {
        moveZ = 0;
    }
   

    if (id == "ev_MOVELEFT") {
        moveX = -1;
    }
    else if (id == "ev_MOVERIGHT") {
        moveX = 1;
    }
    else if (id == "ev_MOVELEFTEND") {
        moveX = 0;
    }
    else if (id == "ev_MOVERIGHTEND") {
        moveX = 0;
    }

    if (id == "ev_JUMP") {
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
}
void PlayerMovementController::fixedUpdate() {
     if (jump) {
        rigidBody->addImpulse(Tapioca::Vector3(0, 50, 0));
        jump = false;
    }
    if (moveX != 0 || moveZ != 0) {
        Tapioca::Vector3 v=rigidBody->getVelocity();
        v += Tapioca::Vector3(moveX, 0, moveZ).getNormalized() * speed;
        if (std::abs(v.x) > speed) v.x = v.x>0? speed: -speed;
        if (std::abs(v.z) > speed) v.z = v.z > 0 ? speed : -speed;

        rigidBody->setVelocity(v);

        //std::cout << moveX << " /" << moveZ<< "\n ";
        float angle = std::atan2f(moveX, moveZ);

        trans->setRotation(Tapioca::Vector3(0, angle*180/3.1415, 0));
    }


}

}