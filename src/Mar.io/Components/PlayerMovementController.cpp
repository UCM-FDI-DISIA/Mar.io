#include "PlayerMovementController.h"
#include <Structure/GameObject.h>
#include <Components/Transform.h>
#include "Structure/BasicBuilder.h"
#include "Components/RigidBody.h"
#include "Coin.h"

namespace MarIo {
template class JUEGO_API Tapioca::BasicBuilder<MarIo::PlayerMovementController>;

PlayerMovementController::PlayerMovementController()
    : trans(nullptr), rigidBody(nullptr), moveX(0), moveZ(0), speed(20), nSpeed(20), runSpeed(35) { }

PlayerMovementController::~PlayerMovementController() { }

bool PlayerMovementController::initComponent(const CompMap& variables) { return true; }

void PlayerMovementController::start() {
    trans = object->getComponent<Tapioca::Transform>();
    rigidBody = object->getComponent<Tapioca::RigidBody>();
}

void PlayerMovementController::update(const uint64_t deltaTime) {
    if (moveX != 0 || moveZ != 0) {
        float angle = std::atan2f(moveX, moveZ);
        trans->setRotation(Tapioca::Vector3(0, angle * 180 / 3.1415, 0));
    }

    if (run && grounded) {
        speed = runSpeed;
        run = false;
    }
    if (runEnd && grounded) {
        speed = nSpeed;
        runEnd = false;
    }
}

void PlayerMovementController::handleEvent(std::string const& id, void* info) {

    if (id == "ev_RunEnd") {
        runEnd = true;
        run = false;
    }
    if (id == "ev_Run") {
        run = true;
        runEnd = false;
    }

    if (id == "ev_MOVEFORWARD") {
        moveZ = -1;
    }
    else if (id == "ev_MOVEBACK") {
        moveZ = 1;
    }
    else if (id == "ev_MOVEFORWARDEND") {
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
        Tapioca::GameObject* object = (Tapioca::GameObject*)info;
        Tapioca::Transform* t = object->getComponent<Tapioca::Transform>();
        if (object->getAllComponents().size() > 3 && object->getComponent<Coin>() == nullptr && !grounded) {
            bounce = true;
        }
        else if (t->getPosition().y + t->getScale().y < trans->getPosition().y - trans->getScale().y &&
                 object->getComponent<Coin>() == nullptr) {
            grounded = true;
            jumps = 0;
        }
    }

    if (id == "onCollisionExit") {
        grounded = false;
    }
}
void PlayerMovementController::fixedUpdate() {
    if (jump) {
        rigidBody->addImpulse(Tapioca::Vector3(0, jumpForce, 0));
        jump = false;
    }
    if (bounce) {
        rigidBody->addImpulse(Tapioca::Vector3(0, impulseForce, 0));
        bounce = false;
    }

    if (moveX != 0 || moveZ != 0) {
        Tapioca::Vector3 v = rigidBody->getVelocity();
        v += Tapioca::Vector3(moveX, 0, moveZ).getNormalized() * speed;
        if (std::abs(v.x) > speed) v.x = v.x > 0 ? speed : -speed;
        if (std::abs(v.z) > speed) v.z = v.z > 0 ? speed : -speed;

        rigidBody->setVelocity(v);
    }

    Tapioca::Vector3 vel = rigidBody->getVelocity();
    if (abs(vel.x) > 0 || abs(vel.z) > 0) {
        rigidBody->setVelocity(Tapioca::Vector3(vel.x * 0.9, vel.y, vel.z * 0.9));
        //std::cout << moveX << " /" << moveZ<< "\n ";
    }
}

void PlayerMovementController::reset() {
    jump = false;
    bounce = false;
    grounded = true;
    jumps = 0;
}

bool PlayerMovementController::getGrounded() { return grounded; }

}