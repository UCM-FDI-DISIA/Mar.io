#include "PlayerMovementController.h"
#include <Structure/GameObject.h>
#include <Components/Transform.h>

PlayerMovementController::PlayerMovementController() : trans(nullptr) {
	
}

PlayerMovementController::~PlayerMovementController() {

}

bool PlayerMovementController::initComponent(const CompMap& variables) {
	return true;
}

void PlayerMovementController::start() {
	trans = object->getComponent<Tapioca::Transform>();
}

void PlayerMovementController::update(const uint64_t deltaTime) {
	
}

void PlayerMovementController::handleEvent(std::string const& id, void* info) {
    Tapioca::Vector3 movement;
    if (id == "ev_MOVEFORWARD") {
        movement += trans->forward();
    }
    else if (id == "ev_MOVELEFT") {
        movement -= trans->right();
    }
    else if (id == "ev_MOVEBACK") {
        movement -= trans->forward();
    }
    else if (id == "ev_MOVERIGHT") {
        movement += trans->right();
    }
    if(movement.magnitudeSquared() != 0) trans->translate(movement.getNormalized());
}
