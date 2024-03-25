#include "FistComponent.h"
#include <Structure/GameObject.h>

#include "Structure/BasicBuilder.h"

namespace MarIo {
template class JUEGO_API Tapioca::BasicBuilder<MarIo::FistComponent>;

FistComponent::FistComponent() { }

FistComponent::~FistComponent() { }

bool FistComponent::initComponent(const CompMap& variables) { 
     cont = 0;
     bool coolDownSet = setValueFromMap(coolDown, "coolDown", variables);
    return coolDownSet;
}

void FistComponent::update(const uint64_t deltaTime) {
    cont += deltaTime;
    if (cont > coolDown) {
        cont = 0;
        for (Tapioca::Component* comp : object->getAllComponents()) {
            comp->setActive(false);
        }
    }
}

void FistComponent::handleEvent(std::string const& id, void* info) {
    if (id == "meleAttack") {
        Tapioca::GameObject* player = (Tapioca::GameObject*)info;
        if (player->getHandler() == "Player") {
            //coins++
            for (Tapioca::Component* comp : object->getAllComponents()) {
                comp->setActive(true);
            }
        }
    }
}
}