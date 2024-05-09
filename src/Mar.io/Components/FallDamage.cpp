#include "FallDamage.h"
#include "Structure/GameObject.h"
#include "Structure/BasicBuilder.h"
#include "Health.h"
#include "Components/Transform.h"
#include "PlayerMovementController.h"
#include "Components/RigidBody.h"

FallDamage::FallDamage() : health(nullptr), trans(nullptr), limitFall(), fallOffset(25.0f), damage(1) { }

FallDamage::~FallDamage() {
    health = nullptr;
    trans = nullptr;
}

bool FallDamage::initComponent(const CompMap& variables) {
    if (!setValueFromMap(fallOffset, "fallOffset", variables)) {
        Tapioca::logInfo(("FallDamage: No se ha establecido una altura de caida respecto a la posicion original del "
                          "elemento. Se establece a " +
                          std::to_string(fallOffset) + " por defecto.")
                             .c_str());
    }
    if (!setValueFromMap(damage, "damage", variables)) {
        Tapioca::logInfo(("ContactDamage: No se ha establecido el dano que produce. Se establece a " +
                          std::to_string(damage) + " por defecto.")
                             .c_str());
    }
    return true;
}

void FallDamage::start() {
    health = object->getComponent<Health>();
    if (health == nullptr) {
        alive = active = false;
        Tapioca::logError("FallDamage: No existe el componente Health, se borrara el componente.");
    }
    else {
        trans = object->getComponent<Tapioca::Transform>();
        if (fallOffset > 0.0f) fallOffset = -fallOffset;
        limitFall = trans->getGlobalPosition().y + fallOffset;
    }
}

void FallDamage::update(const uint64_t deltaTime) {
    float globalPosY = trans->getGlobalPosition().y;
    if (globalPosY < limitFall) {
        health->deactivateInvincibility();
        health->loseHP(damage);
    }
}
