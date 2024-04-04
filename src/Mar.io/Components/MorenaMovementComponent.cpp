#include "MorenaMovementComponent.h"
#include <Structure/GameObject.h>
#include "Structure/BasicBuilder.h"
#include "Components/RigidBody.h"
#include "Components/Transform.h"

namespace MarIo {
template class JUEGO_API Tapioca::BasicBuilder<MarIo::MorenaMovementComponent>;

MorenaMovementComponent::MorenaMovementComponent() : rigidBody(nullptr), trans(nullptr) { }

MorenaMovementComponent::~MorenaMovementComponent() { }

bool MorenaMovementComponent::initComponent(const CompMap& variables) { return true; }

void MorenaMovementComponent::start() {
    rigidBody = object->getComponent<Tapioca::RigidBody>();
    trans = object->getComponent<Tapioca::Transform>();
}

void MorenaMovementComponent::update(const uint64_t deltaTime) {

    time += deltaTime;
    if (time > timeMovement) {
        sign *= -1;
        time = 0;
    }

    if (updown) {
        trans->translate(Tapioca::Vector3(0, movement * sign, 0));
    }
    else {
        trans->translate(Tapioca::Vector3(movement * sign, 0, 0));
    }
}

void MorenaMovementComponent::fixedUpdate() {
    //if (updown) {
    //    //rigidBody->addImpulse(Tapioca::Vector3(0, sign * movement, 0));
    //}
    //else {
    //    //rigidBody->addImpulse(Tapioca::Vector3(sign * movement, 0, 0));
    //}
}

void MorenaMovementComponent::handleEvent(std::string const& id, void* info) { }
}
