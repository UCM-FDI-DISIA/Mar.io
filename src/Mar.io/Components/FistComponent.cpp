#include "FistComponent.h"
#include <Structure/GameObject.h>

#include "Structure/BasicBuilder.h"

namespace MarIo {
template class JUEGO_API Tapioca::BasicBuilder<MarIo::FistComponent>;

FistComponent::FistComponent() { }

FistComponent::~FistComponent() { }

bool FistComponent::initComponent(const CompMap& variables) { return true; }

void FistComponent::update(const uint64_t deltaTime) { }

void FistComponent::handleEvent(std::string const& id, void* info) {
    if (id == "meleAttack") {
        Tapioca::GameObject* player = (Tapioca::GameObject*)info;
        if (player->getHandler() == "Player") {
            //coins++
            object->die();
        }
    }
}
}