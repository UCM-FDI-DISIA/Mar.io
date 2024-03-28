#include "CoinComponent.h"
#include <Structure/GameObject.h>
#include <Components/RigidBody.h>
#include "Structure/BasicBuilder.h"

namespace MarIo {
template class JUEGO_API Tapioca::BasicBuilder<MarIo::CoinComponent>;

CoinComponent::CoinComponent() { }

CoinComponent::~CoinComponent() { }

bool CoinComponent::initComponent(const CompMap& variables) { return true; }

void CoinComponent::start() {
    Tapioca::RigidBody* rb = object->getComponent<Tapioca::RigidBody>();
    rb->setTensor(Tapioca::Vector3(0, 1, 0));
}

void CoinComponent::handleEvent(std::string const& id, void* info) {
    if (id == "onCollisionEnter") {
        Tapioca::GameObject* player = (Tapioca::GameObject*)info;
        if (player->getHandler() == "Player") {
            //coins++
            object->die();
        }
    }
}
}