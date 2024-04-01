#include "FistComponent.h"
#include <Structure/GameObject.h>

#include "Structure/BasicBuilder.h"

namespace MarIo {
template class JUEGO_API Tapioca::BasicBuilder<MarIo::FistComponent>;

FistComponent::FistComponent():onAttack(false),duration(0),coolDown(0),cont(0),canHit(true) { }

FistComponent::~FistComponent() { }

bool FistComponent::initComponent(const CompMap& variables) {
    cont = 0;
    canHit = false;
    onAttack = false;
    bool coolDownSet = setValueFromMap(coolDown, "coolDown", variables);
    bool durationSet = setValueFromMap(duration, "duration", variables);
    return coolDownSet && durationSet;
}

void FistComponent::update(const uint64_t deltaTime) {
    if (!canHit && !onAttack) {
        cont += deltaTime;
        if (cont > coolDown) {
            cont = 0;
            canHit = true;
        }
    }
    if (onAttack) {
        cont += deltaTime;
        if (cont > duration) {
            cont = 0;
            onAttack = false;
        }
    }
}


void FistComponent::handleEvent(std::string const& id, void* info) {
    if (id == "ev_MELEATTACK" && canHit) {
        canHit = false;
        onAttack = true;
    }
}

bool FistComponent::isAttack() { return onAttack; }

}