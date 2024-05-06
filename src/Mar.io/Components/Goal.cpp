#include "Goal.h"
#include "Structure/GameObject.h"
#include "Structure/BasicBuilder.h"
#include "PlayerMovementController.h"
#include "GameManager.h"

template class JUEGO_API Tapioca::BasicBuilder<Goal>;

Goal::Goal() { }


void Goal::handleEvent(std::string const& id, void* info) {
    if (id == "onCollisionEnter") {
        Tapioca::GameObject* player = (Tapioca::GameObject*)info;
        if (player->getComponent<PlayerMovementController>() != nullptr) {
            pushEvent("ev_Win", {}, true);
        }
    }
}
