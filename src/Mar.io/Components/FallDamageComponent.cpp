#include "FallDamageComponent.h"
#include <Structure/GameObject.h>
#include "Structure/BasicBuilder.h"
#include "HealthComponent.h"
#include "Components/Transform.h"

namespace MarIo {
template class JUEGO_API Tapioca::BasicBuilder<MarIo::FallDamageComponent>;

FallDamageComponent::FallDamageComponent() : health(nullptr), trans(nullptr) { }

FallDamageComponent::~FallDamageComponent() { }

bool FallDamageComponent::initComponent(const CompMap& variables) { return true; }

void FallDamageComponent::start() {
    health = object->getComponent<HealthComponent>();
    trans = object->getComponent<Tapioca::Transform>();
}

void FallDamageComponent::update(const uint64_t deltaTime) {
    // Se cambiará la altura por elementos como el avismo
    if (trans->getPosition().y < 0) {
        health->loseHP(health->getHP()); 
        // GAME OVER
    }
}

void FallDamageComponent::fixedUpdate() {

}

void FallDamageComponent::handleEvent(std::string const& id, void* info) { }
}
