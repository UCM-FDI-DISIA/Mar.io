#include "PlayerMovementController.h"
#include "Structure/GameObject.h"
#include "Components/Transform.h"
#include "Structure/BasicBuilder.h"
#include "Components/RigidBody.h"
#include "Components/Animator.h"
#include "Coin.h"
#include "Health.h"
#include "GameManager.h"
#include "Chest.h"
#include "EnemyHealth.h"
#include "Jump.h"

PlayerMovementController::PlayerMovementController()
    : jump(nullptr), run(false), runEnd(false), walk(false), trans(nullptr), rigidBody(nullptr), anim(nullptr),
      health(nullptr), moveX(0), moveZ(0), speed(0), runSpeed(10), walkSpeed(5) { }

PlayerMovementController::~PlayerMovementController() {

}

bool PlayerMovementController::initComponent(const CompMap& variables) {
    if (!setValueFromMap(runSpeed, "runSpeed", variables)) {
        Tapioca::logInfo(("PlayerMovementController: No se ha establecido la velocidad de carrera. Se establece a " +
                          std::to_string(runSpeed) + " por defecto.").c_str());
    }
    if (!setValueFromMap(walkSpeed, "walkSpeed", variables)) {
        Tapioca::logInfo(("PlayerMovementController: No se ha establecido la velocidad de andar. Se establece a " +
                          std::to_string(walkSpeed) + " por defecto.").c_str());
    }
    return true;
}

void PlayerMovementController::start() {
    trans = object->getComponent<Tapioca::Transform>();
    rigidBody = object->getComponent<Tapioca::RigidBody>();
    anim = object->getComponent<Tapioca::Animator>();
    auto children = trans->getChildren();

    bool found = false;
    for (auto it = children.begin(); it != children.end() && !found; ++it) {
        jump = (*it)->getObject()->getComponent<Jump>();
        if (jump != nullptr) {
            found = true;
        }
    }

    if (trans == nullptr || rigidBody == nullptr || anim == nullptr || jump == nullptr) {
        alive = active = false;
    }
    else {
        speed = walkSpeed;
        initialPos = trans->getGlobalPosition();
        respawnpos = initialPos;
    }
}

void PlayerMovementController::update(const uint64_t deltaTime) {
    if (moveX != 0 || moveZ != 0) {
        float angle = std::atan2f(float(moveX), float(moveZ));
        trans->setRotation(Tapioca::Vector3(0, angle * 180.0f / (float)M_PI, 0));
    }

    if (run && jump != nullptr && jump->isGrounded()) {
        speed = runSpeed;
        run = false;
    }
    if (runEnd && jump != nullptr && jump->isGrounded()) {
        speed = walkSpeed;
        runEnd = false;
    }
}

void PlayerMovementController::handleEvent(std::string const& id, void* info) {
    if (id == "ev_componentDied") {
        anim = nullptr;
        alive = active = false;
        Tapioca::logInfo("PlayerMovementController: El animator no se ha inicializado");
    }

    if (id == "ev_RunEnd") {
        runEnd = true;
        run = false;
    }
    if (id == "ev_Run") {
        run = true;
        runEnd = false;
    }

    if (id == "ev_MOVEFORWARD") {
        anim = nullptr;
        alive = active = false;
        Tapioca::logInfo("PlayerMovementController: El animator no se ha inicializado");
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

    if (id == "ev_LifeLost") {
        trans->setGlobalPosition(respawnpos);
        reset();
    }
}

void PlayerMovementController::fixedUpdate() {
    Tapioca::Vector3 v = rigidBody->getVelocity();

    if (abs(moveX) == 0 && abs(moveZ) == 0 && anim != nullptr) {
        if (anim->getAnimName() != "Idle" && anim->getAnimName() != "Punching") {
            anim->setLoop(true);
            anim->playAnim("Idle");
        }
    }

    if (jump != nullptr && jump->isJumping()) {
        rigidBody->setVelocity(Tapioca::Vector3(v.x, jump->getJumpSpeed(), v.z));
        jump->setJump(false);
    }
    if (jump != nullptr && jump->isBouncing()) {
        rigidBody->setVelocity(Tapioca::Vector3(v.x, jump->getBounceSpeed(), v.z));
        jump->setBounce(false);
    }

    if (moveX != 0 || moveZ != 0) {
        v = rigidBody->getVelocity();
        v += Tapioca::Vector3(float(moveX), 0, float(moveZ)).getNormalized() * speed;
        if (std::abs(v.x) > speed) v.x = v.x > 0 ? speed : -speed;
        if (std::abs(v.z) > speed) v.z = v.z > 0 ? speed : -speed;

        rigidBody->setVelocity(v);

        if (!walk) {
            pushEvent("ev_Walk", nullptr);
            walk = true;
        }
    }
    else if (walk) {
        pushEvent("ev_NotWalk", nullptr);
        walk = false;
    }
    v = rigidBody->getVelocity();
    if (abs(v.x) > 0 || abs(v.z) > 0) {
        rigidBody->setVelocity(Tapioca::Vector3(float(v.x * 0.9), v.y, float(v.z * 0.9)));
    }
}

void PlayerMovementController::reset() {
    if (jump != nullptr) {
        jump->reset();
    }
    walk = false;
    respawnpos = initialPos;
}
