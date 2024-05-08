#include "PhishingNet.h"
#include "Structure/BasicBuilder.h"
#include "Structure/GameObject.h"
#include "Health.h"
#include "Components/RigidBody.h"
#include "Components/Transform.h"

template class JUEGO_API Tapioca::BasicBuilder<PhishingNet>;

PhishingNet::PhishingNet() : rigidBody(nullptr), transform(nullptr), speed(0.0f) { }

PhishingNet::~PhishingNet() {
    rigidBody = nullptr;
    transform = nullptr;
}

bool PhishingNet::initComponent(const CompMap& variables) {
    if (!setValueFromMap(speed, "speed", variables)) {
        speed = 0;
    }
    if (!setValueFromMap(velocity.x, "velocityX", variables)) {
        velocity.x = 0;
    }
    if (!setValueFromMap(velocity.y, "velocityY", variables)) {
        velocity.y = 0;
    }
    if (!setValueFromMap(velocity.z, "velocityZ", variables)) {
        velocity.z = 0;
    }
    velocity *= speed;
    return true;
}

void PhishingNet::handleEvent(std::string const& id, void* info) {
    if (id == "onCollisionEnter") {
        Tapioca::GameObject* player = (Tapioca::GameObject*)info;
        if (player->getHandler() == "Player") {
            pushEvent("ev_GameOver", nullptr);
        }
    }
}

void PhishingNet::start() {
    rigidBody = object->getComponent<Tapioca::RigidBody>();
    transform = object->getComponent<Tapioca::Transform>();
}

void PhishingNet::update(const uint64_t deltaTime) { transform->translate(velocity * speed * (float)deltaTime / 1000.0f); }
