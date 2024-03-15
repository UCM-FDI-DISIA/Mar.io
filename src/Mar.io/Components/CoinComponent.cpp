#include "CoinComponent.h"
#include <Structure/GameObject.h>

#include "Structure/BasicBuilder.h"

namespace MarIo {
template class JUEGO_API Tapioca::BasicBuilder<MarIo::CoinComponent>;

CoinComponent::CoinComponent() { }

CoinComponent::~CoinComponent() { }

bool CoinComponent::initComponent(const CompMap& variables) { return true; }

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