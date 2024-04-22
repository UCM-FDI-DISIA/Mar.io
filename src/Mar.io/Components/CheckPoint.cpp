#include "CheckPoint.h"
#include "Structure/BasicBuilder.h"
#include <Structure/GameObject.h>
namespace MarIo {
    template class JUEGO_API Tapioca::BasicBuilder<MarIo::CheckPoint>;
    CheckPoint::CheckPoint() { }
    CheckPoint::~CheckPoint() { }

    void CheckPoint::handleEvent(std::string const& id, void* info) { 
        if (id == "PLAYER_DEAD") {
            Tapioca::logInfo("RESPAWNEANDO");
        }
        if (id == "onCollisionEnter") {
            Tapioca::logInfo("JUGADOR LLEGO A PUNTO DE CONTROL");
            Tapioca::GameObject* player = (Tapioca::GameObject*)info;
            if (player->getHandler() == "Player") {
                if (!active) {
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
             active = false;
         }
        return true; 
    }

    void CheckPoint::start() { 
    if (active) {
            activate();
        }
    }

    Tapioca::Vector3 CheckPoint::getRespawnPos() { return  spawnPosition; }

    void CheckPoint::activate() { 
        //se podrian poner aqui una animacijon unas particulas o algo asi aesthetic
        active = true;
        pushEvent("CHECKPOINT_REACHED", this);
    }
    }
