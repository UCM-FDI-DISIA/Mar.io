#include "Fist.h"
#include "Structure/GameObject.h"
#include "Structure/BasicBuilder.h"
#include "Health.h"

template class JUEGO_API Tapioca::BasicBuilder<Fist>;

Fist::Fist() : onAttack(false), duration(0), coolDown(0), cont(0), canHit(true), damageDealt(false) { }

bool Fist::initComponent(const CompMap& variables) {
    cont = 0;
    canHit = false;
    onAttack = false;
    bool coolDownSet = setValueFromMap(coolDown, "coolDown", variables);
    bool durationSet = setValueFromMap(duration, "duration", variables);
    return coolDownSet && durationSet;
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
            damageDealt = false;
        }
    }
}

void Fist::handleEvent(std::string const& id, void* info) {
    if (id == "ev_MELEATTACK" && canHit) {
        canHit = false;
        onAttack = true;
    }
    if ((id == "onCollisionStay" || id == "onCollisionEnter") && onAttack && !damageDealt) {
        Tapioca::GameObject* object = (Tapioca::GameObject*)info;
        if (object != nullptr) {
            Health* health = object->getComponent<Health>();
            if (health != nullptr) {
                damageDealt = true;
                object->die();
            }
        }
    }
}

bool Fist::isAttack() { return onAttack; }
