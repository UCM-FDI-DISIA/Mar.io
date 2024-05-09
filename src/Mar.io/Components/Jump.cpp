#include "Jump.h"
#include "Structure/GameObject.h"
#include "Structure/BasicBuilder.h"
#include "EnemyHealth.h"
#include "checkML.h"
#include "Components/Transform.h"
#include "Components/Chest.h"
#include "PlayerMovementController.h"
#include "Coin.h"
#include "HeartPowerUp.h"
#include "InvincibilityPowerUp.h"

Jump::Jump()
    : playerMovementController(nullptr), damage(1), grounded(true), jumps(0), jump(false), jumpSpeed(8), bounceSpeed(3),
      jumpsNumber(2), bounce(false) { }

void Jump::start() {
    Tapioca::Transform* parentTrans = object->getComponent<Tapioca::Transform>()->getParent();
    if (parentTrans != nullptr) {
        playerMovementController = parentTrans->getObject()->getComponent<PlayerMovementController>();
    }
}

bool Jump::initComponent(const CompMap& variables) {
    if (!setValueFromMap(damage, "damage", variables)) {
        Tapioca::logInfo(("FeetDamage: No se ha indica el daño que realiza. Se establece a " + std::to_string(damage) +
                          " por defecto.").c_str());
    }
    if (!setValueFromMap(jumpsNumber, "jumpsNumber", variables)) {
        Tapioca::logInfo(
            ("PlayerMovementController: No se ha establecido el numero de saltos que puede realizar. Se establece a " +
             std::to_string(jumpsNumber) + " por defecto.").c_str());
    }
    if (!setValueFromMap(jumpSpeed, "jumpSpeed", variables)) {
        Tapioca::logInfo(("PlayerMovementController: No se ha establecido la velocidad del salto. Se establece a " +
                          std::to_string(jumpSpeed) + " por defecto.").c_str());
    }
    if (!setValueFromMap(bounceSpeed, "bounceSpeed", variables)) {
        Tapioca::logInfo(
            ("PlayerMovementController: No se ha establecido la velocidad de rebote en los objetos. Se establece a " +
             std::to_string(bounceSpeed) + " por defecto.").c_str());
    }
    return true;
}

void Jump::update(const uint64_t deltaTime) {
    if (jump) {
        pushEvent("ev_Jump", nullptr);
        pushEvent("ev_NotWalk", nullptr);
    }
}

void Jump::handleEvent(std::string const& id, void* info) {
    if (id == "ev_componentDied") {
        playerMovementController = nullptr;
        alive = active = false;
        Tapioca::logInfo("Jump: El playerMovementController no se ha inicializado");
    }

    if (id == "ev_JUMP") {
        if (jumps < jumpsNumber || grounded) {
            jump = true;
            grounded = false;
            jumps++;
        }
    }

    if (id == "onCollisionEnter") {
        Tapioca::GameObject* object = (Tapioca::GameObject*)info;

        EnemyHealth* enemyHealth = object->getComponent<EnemyHealth>();
        Chest* chest = object->getComponent<Chest>();
        if ((enemyHealth != nullptr || chest != nullptr) && !grounded) bounce = true;
        else {
            Coin* coin = object->getComponent<Coin>();
            HeartPowerUp* heart = object->getComponent<HeartPowerUp>();
            InvincibilityPowerUp* invincibility = object->getComponent<InvincibilityPowerUp>();
            // si se se colisiona con un power up no se puede volver a saltar
            if (coin == nullptr && heart == nullptr && invincibility == nullptr) {
                grounded = true;
                jumps = 0;
                if (playerMovementController != nullptr) {
                    playerMovementController->setWalk(false);
                }
            }
        }
    }

    if (id == "onCollisionEnter" || id == "onCollisionStay") {
        Tapioca::GameObject* colObject = (Tapioca::GameObject*)info;
        if (colObject != nullptr) {
            EnemyHealth* enemyHealth = colObject->getComponent<EnemyHealth>();
            Tapioca::Transform* transform = colObject->getComponent<Tapioca::Transform>();
            // lo que caracteriza al enemigo tortuga es que es un enemigo (EnemyHealth)
            // y que tiene un objeto hijo que es su caparazon
            if (enemyHealth != nullptr && transform->getChildren().size() <= 0) {
                enemyHealth->loseHP(damage);
            }
            else {
                Chest* chest = colObject->getComponent<Chest>();
                if (chest != nullptr) {
                    chest->openChest();
                }
            }
        }
    }

    // hacer que no se detecte salto de daño dos veces con un enemigo en la misma colision
    if (id == "onCollisionExit") {
        grounded = false;

        Tapioca::GameObject* colObject = (Tapioca::GameObject*)info;
        EnemyHealth* enemyHealth = colObject->getComponent<EnemyHealth>();
        if (enemyHealth != nullptr) {
            enemyHealth->canReceiveDamage();
        }
    }
}

void Jump::reset() {
    jump = false;
    bounce = false;
    grounded = true;
    jumps = 0;
}