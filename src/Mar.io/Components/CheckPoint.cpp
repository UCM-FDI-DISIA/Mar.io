#include "CheckPoint.h"
#include "Structure/BasicBuilder.h"
#include "Structure/GameObject.h"
#include "Components/Transform.h"

template class JUEGO_API Tapioca::BasicBuilder<CheckPoint>;

CheckPoint::CheckPoint() : globalPos(), offset(), activated(false) { }

void CheckPoint::handleEvent(std::string const& id, void* info) {
    if (!activated) {
        if (id == "onCollisionEnter") {
            Tapioca::GameObject* player = (Tapioca::GameObject*)info;
            if (player->getHandler() == "Player") {
                activate();
            }
        }
    }
}

bool CheckPoint::initComponent(const CompMap& variables) {
    if (!setValueFromMap(offset.x, "offsetX", variables)) {
        offset.x = 0;
    }
    if (!setValueFromMap(offset.y, "offsetY", variables)) {
        offset.y = 0;
    }
    if (!setValueFromMap(offset.z, "offsetZ", variables)) {
        offset.z = 0;
    }
    if (!setValueFromMap(activated, "activated", variables)) {
        activated = false;
    }
    return true;
}

void CheckPoint::start() {
    globalPos = object->getComponent<Tapioca::Transform>()->getGlobalPosition();
    if (activated) {
        activate();
    }
}

Tapioca::Vector3 CheckPoint::getRespawnPos() { return globalPos + offset; }

void CheckPoint::activate() {
    activated = true;
    pushEvent("ev_CheckpointReached", this);
}
