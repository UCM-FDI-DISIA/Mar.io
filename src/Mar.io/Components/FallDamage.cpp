#include "FallDamage.h"
#include "Structure/GameObject.h"
#include "Structure/BasicBuilder.h"
#include "Health.h"
#include "Components/Transform.h"
#include "PlayerMovementController.h"
#include "Components/RigidBody.h"

template class JUEGO_API Tapioca::BasicBuilder<FallDamage>;

FallDamage::FallDamage() : health(nullptr), trans(nullptr), limitFall(), fallOffset(25.0f), damage(1.0f) { }

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
    trans = object->getComponent<Tapioca::Transform>();
    if (fallOffset > 0.0f) {
        fallOffset = -fallOffset;
    }
    limitFall = trans->getGlobalPosition().y + fallOffset;
}

void FallDamage::update(const uint64_t deltaTime) {
    float globalPosY = trans->getGlobalPosition().y;
    if (globalPosY < limitFall) {
        health->deactivateInvincibility();
        health->loseHP(damage);
    }

    // Timer para registrar prev pos
    //time += deltaTime;
    //if (time > timeNewPos && playerMC->getGrounded() && rigidBody->getVelocity().y < 0.05f &&
    //    rigidBody->getVelocity().y > -0.05f) {
    //    prevPos = Tapioca::Vector3(trans->getPosition().x, trans->getPosition().y + 5, trans->getPosition().z);
    //    time = 0;
    //}

    //// Se cambiará la altura al caer por elementos como el abismo
    //if (trans->getPosition().y < -15) {
    //    health->loseHP(health->getHP());

    //    // GAME OVER (healthg == 0)
    //    trans->setPosition(initPos);
    //    ahora el checkpoint es el que le da una posicion alplayer para respawnear trans->setPosition(prevPos);
    //    playerMC->reset();
    //}
}
