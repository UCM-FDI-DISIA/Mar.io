#include "MorenaMovementComponent.h"
#include <Structure/GameObject.h>
#include <Components/Transform.h>
#include "Structure/BasicBuilder.h"
#include "Components/RigidBody.h"

namespace MarIo {
template class JUEGO_API Tapioca::BasicBuilder<MarIo::MorenaMovementComponent>;

MorenaMovementComponent::MorenaMovementComponent() : trans(nullptr) { }

MorenaMovementComponent::~MorenaMovementComponent() { }

bool MorenaMovementComponent::initComponent(const CompMap& variables) { return true; }

void MorenaMovementComponent::start() { trans = object->getComponent<Tapioca::Transform>(); }

void MorenaMovementComponent::update(const uint64_t deltaTime) {
    Tapioca::Vector3 movement;

    time += deltaTime;
    if (time < timeMovement) {
        if (updown) {
            movement += Tapioca::Vector3(0, sign * 1, 0);
        }
        else {
            movement += trans->right();
        }
    }
    else {
        sign *= -1;
        time = 0;
    }
    if (movement.magnitudeSquared() != 0) trans->translate(movement.getNormalized());
}

void MorenaMovementComponent::handleEvent(std::string const& id, void* info) { }
}
