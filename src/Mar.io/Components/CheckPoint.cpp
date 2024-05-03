#include "CheckPoint.h"
#include "Structure/BasicBuilder.h"
#include "Structure/GameObject.h"

template class JUEGO_API Tapioca::BasicBuilder<CheckPoint>;

CheckPoint::CheckPoint() : spawnPosition(Tapioca::Vector3()), activated(false) { }

void CheckPoint::handleEvent(std::string const& id, void* info) {
    if (id == "ev_LifeLost") {
        Tapioca::logInfo("RESPAWNEANDO");
    }
    if (id == "onCollisionEnter") {
        Tapioca::logInfo("JUGADOR LLEGO A PUNTO DE CONTROL");
        Tapioca::GameObject* player = (Tapioca::GameObject*)info;
        if (player->getHandler() == "Player") {
            if (!activated) {
                activate();
            }
        }
    }
}

bool CheckPoint::initComponent(const CompMap& variables) {
    if (!setValueFromMap(spawnPosition.x, "spawnPositionX", variables)) {
        spawnPosition.x = 0;
    }
    if (!setValueFromMap(spawnPosition.y, "spawnPositionY", variables)) {
        spawnPosition.y = 0;
    }
    if (!setValueFromMap(spawnPosition.z, "spawnPositionZ", variables)) {
        spawnPosition.z = 0;
    }
    if (!setValueFromMap(active, "active", variables)) {
        activated = false;
    }
    return true;
}

void CheckPoint::start() {
    if (activated) {
        activate();
    }
}

Tapioca::Vector3 CheckPoint::getRespawnPos() { return spawnPosition; }

void CheckPoint::activate() {
    // se podrian poner aqui una animacijon unas particulas o algo asi aesthetic
    activated = true;
    pushEvent("ev_CheckpointReached", this);
}
