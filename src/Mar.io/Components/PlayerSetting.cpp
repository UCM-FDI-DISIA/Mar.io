#include "PlayerSetting.h"
#include <Structure/GameObject.h>
#include <Components/RigidBody.h>
#include "Structure/BasicBuilder.h"

namespace MarIo {
template class JUEGO_API Tapioca::BasicBuilder<MarIo::PlayerSetting>;

PlayerSetting::PlayerSetting(){ }

PlayerSetting::~PlayerSetting() { }

bool PlayerSetting::initComponent(const CompMap& variables) { return true; }

void PlayerSetting::start() {

	Tapioca::RigidBody* rb = object->getComponent<Tapioca::RigidBody>(); 
	rb->setTensor(Tapioca::Vector3(0, 0, 0));
    rb->setGravity(Tapioca::Vector3(0, -20, 0));
}
}

