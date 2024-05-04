#include "PlayerMovementController.h"
#include "Structure/GameObject.h"
#include "Components/Transform.h"
#include "Structure/BasicBuilder.h"
#include "Components/RigidBody.h"
#include "Components/Animator.h"
#include "Coin.h"
#include "CheckPoint.h"

template class JUEGO_API Tapioca::BasicBuilder<PlayerMovementController>;

PlayerMovementController::PlayerMovementController()
    : grounded(true), jumps(0), jump(false), bounce(false), run(false), runEnd(false), trans(nullptr),
      rigidBody(nullptr), anim(nullptr), moveX(0), moveZ(0), speed(0), jumpSpeed(7), bounceSpeed(3), runSpeed(10),
      walkSpeed(5) { }

PlayerMovementController::~PlayerMovementController() {
    trans = nullptr;
    rigidBody = nullptr;
    anim = nullptr;
}

bool PlayerMovementController::initComponent(const CompMap& variables) { return true; }

void PlayerMovementController::start() {
    trans = object->getComponent<Tapioca::Transform>();
    rigidBody = object->getComponent<Tapioca::RigidBody>();
    anim = object->getComponent<Tapioca::Animator>();
    speed = walkSpeed;

    initialPos = trans->getGlobalPosition();
    respawnpos = initialPos;
}

void PlayerMovementController::update(const uint64_t deltaTime) {
    /*std::to_string(trans->getPosition().x);
    std::string pos_s = 
        "x: " + std::to_string(trans->getPosition().x) +
        "; y: " + std::to_string(trans->getPosition().y) + 
        "; z: " + std::to_string(trans->getPosition().z);
    Tapioca::logInfo(pos_s.c_str());*/

    if (moveX != 0 || moveZ != 0) {
        float angle = std::atan2f(moveX, moveZ);
        trans->setRotation(Tapioca::Vector3(0, angle * 180 / 3.1415, 0));
    }

    if (run && grounded) {
        speed = runSpeed;
        run = false;
    }
    if (runEnd && grounded) {
        speed = walkSpeed;
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
        if (moveZ != -1 && anim != nullptr) {
            anim->setLoop(true);
            anim->playAnim("Running");
        }
        moveZ = -1;
    }
    else if (id == "ev_MOVEBACK") {
        if (moveZ != 1 && anim != nullptr) {
            anim->setLoop(true);
            anim->playAnim("Running");
        }
        moveZ = 1;
    }
    else if (id == "ev_MOVEFORWARDEND") {
        moveZ = 0;
    }
    else if (id == "ev_MOVEBACKEND") {
        moveZ = 0;
    }

    if (id == "ev_MOVELEFT") {
        if (moveX != -1 && anim != nullptr) {
            anim->setLoop(true);
            anim->playAnim("Running");
        }
        moveX = -1;
    }
    else if (id == "ev_MOVERIGHT") {
        if (moveX != 1 && anim != nullptr) {
            anim->setLoop(true);
            anim->playAnim("Running");
        }
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
    if (id == "ev_MELEATTACK" && anim != nullptr) {
        anim->setLoop(false);
        anim->playAnim("Punching");
    }
    if (id == "onCollisionEnter") {
        Tapioca::GameObject* object = (Tapioca::GameObject*)info;
        Tapioca::Transform* t = object->getComponent<Tapioca::Transform>();
        if (object->getAllComponents().size() > 3 && object->getComponent<Coin>() == nullptr && !grounded) {
            bounce = true;
        }
        else if (t->getGlobalPosition().y - t->getGlobalScale().y / 2 <
                 trans->getGlobalPosition().y - trans->getGlobalScale().y / 2 &&
                 object->getComponent<Coin>() == nullptr) 
        {
            grounded = true;
            jumps = 0;
        }
    }

    if (id == "onCollisionExit") {
        grounded = false;
    }
    if (id == "ev_LifeLost") {
        Tapioca::logInfo("RESPAWNEANDO");
        trans->setGlobalPosition(respawnpos);
        reset();
    }
    if (id == "ev_CheckpointReached") {
        CheckPoint* c = (CheckPoint*)info;
        if (c != nullptr) {
            respawnpos = c->getRespawnPos();
        }
    }

}

void PlayerMovementController::fixedUpdate() {
    Tapioca::Vector3 v = rigidBody->getVelocity();
    if (jump) {
        rigidBody->setVelocity(Tapioca::Vector3(v.x, jumpSpeed, v.z));
        jump = false;
    }
    if (bounce) {
        rigidBody->setVelocity(Tapioca::Vector3(v.x, bounceSpeed, v.z));
        bounce = false;
    }

    if (moveX != 0 || moveZ != 0) {
        v = rigidBody->getVelocity();
        v += Tapioca::Vector3(moveX, 0, moveZ).getNormalized() * speed;
        if (std::abs(v.x) > speed) v.x = v.x > 0 ? speed : -speed;
        if (std::abs(v.z) > speed) v.z = v.z > 0 ? speed : -speed;

        rigidBody->setVelocity(v);
    }
    v = rigidBody->getVelocity();
    if (abs(v.x) > 0 || abs(v.z) > 0) {
        rigidBody->setVelocity(Tapioca::Vector3(v.x * 0.9, v.y, v.z * 0.9));
        //std::cout << moveX << " /" << moveZ<< "\n ";
    }
}

void PlayerMovementController::reset() {
    jump = false;
    bounce = false;
    grounded = true;
    jumps = 0;
    respawnpos = initialPos;
}

bool PlayerMovementController::getGrounded() { return grounded; }