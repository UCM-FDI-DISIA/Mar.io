#include "Fist.h"
#include "Structure/GameObject.h"
#include "Structure/BasicBuilder.h"
#include "Components/Animator.h"
#include "Components/Transform.h"
#include "EnemyHealth.h"
#include "Chest.h"

Fist::Fist() : onAttack(false), duration(1000), coolDown(100), cont(0), canHit(true), damage(1), parentAnim(nullptr) { }

void Fist::start() {
    Tapioca::Transform* transform = object->getComponent<Tapioca::Transform>();
    Tapioca::Transform* parentTransform = transform->getParent();
    if (parentTransform != nullptr) {
        parentAnim = parentTransform->getObject()->getComponent<Tapioca::Animator>();
    }
}

bool Fist::initComponent(const CompMap& variables) {
    if (!setValueFromMap(coolDown, "coolDown", variables)) {
        Tapioca::logInfo(("Fist: No se ha indicado el cooldown. Se establece a " 
                          + std::to_string(coolDown) + " por defecto.").c_str());
    } 
    if (!setValueFromMap(duration, "duration", variables)) {
        Tapioca::logInfo(("Fist: No se ha indicado la duracion. Se establece a "
                          + std::to_string(duration) + " por defecto.").c_str());
    }
    if (!setValueFromMap(damage, "damage", variables)) {
        Tapioca::logInfo(("Fist: No se ha indicado el daño que realiza. Se establece a "
                          + std::to_string(damage) + " por defecto.").c_str());
    }
    return true;
}

void Fist::update(const uint64_t deltaTime) {
    if (!canHit && !onAttack) {
        cont += deltaTime;
        if (cont > coolDown) {
            cont = 0;
            canHit = true;
        }
    }
    if (onAttack) {
        cont += deltaTime;
        if (cont > duration) {
            cont = 0;
            onAttack = false;
        }
    }
}

void Fist::handleEvent(std::string const& id, void* info) {
    if (id == "ev_componentDied") {
        parentAnim = nullptr;
        alive = active = false;
        Tapioca::logInfo("PlayerMovementController: El animator no se ha inicializado");
    }

    if (id == "ev_MELEATTACK" && canHit) {
        canHit = false;
        onAttack = true;

        if (parentAnim != nullptr) {
            parentAnim->setLoop(false);
            parentAnim->playAnim("Punching");
        }

        pushEvent("ev_Fist", nullptr);
    }

    if ((id == "onCollisionEnter" || id == "onCollisionStay") && onAttack) {
        Tapioca::GameObject* colObject = (Tapioca::GameObject*)info;
        if (colObject != nullptr) {
            EnemyHealth* enemyHealth = colObject->getComponent<EnemyHealth>();
            if (enemyHealth != nullptr) {
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

    if (id == "onCollisionExit") {
        if (!onAttack) {
            Tapioca::GameObject* colObject = (Tapioca::GameObject*)info;
            EnemyHealth* enemyHealth = colObject->getComponent<EnemyHealth>();
            if (enemyHealth != nullptr) {
                enemyHealth->canReceiveDamage();
            }
        }
    }
}