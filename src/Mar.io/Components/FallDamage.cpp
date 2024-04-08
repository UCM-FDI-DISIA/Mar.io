#include "FallDamage.h"
#include <Structure/GameObject.h>
#include "Structure/BasicBuilder.h"
#include "Health.h"
#include "Components/Transform.h"

namespace MarIo {
template class JUEGO_API Tapioca::BasicBuilder<MarIo::FallDamage>;

FallDamage::FallDamage() : health(nullptr), trans(nullptr) { }

FallDamage::~FallDamage() { }

bool FallDamage::initComponent(const CompMap& variables) { return true; }

void FallDamage::start() {
    health = object->getComponent<Health>();
    trans = object->getComponent<Tapioca::Transform>();
}

void FallDamage::update(const uint64_t deltaTime) {
    // Se cambiará la altura por elementos como el avismo
    if (trans->getPosition().y < 0) {
        health->loseHP(health->getHP()); 
        // GAME OVER
    }
}

void FallDamage::fixedUpdate() {

}

void FallDamage::handleEvent(std::string const& id, void* info) { }
}
