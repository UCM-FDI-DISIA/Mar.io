#include "PlayerSetting.h"
#include "Structure/GameObject.h"
#include "Components/RigidBody.h"
#include "Structure/BasicBuilder.h"

PlayerSetting::PlayerSetting(){ }

PlayerSetting::~PlayerSetting() { }

void PlayerSetting::start() {
	Tapioca::RigidBody* rb = object->getComponent<Tapioca::RigidBody>(); 
	if (rb != nullptr) {
		rb->setTensor(Tapioca::Vector3(0, 0, 0));
		rb->setGravity(Tapioca::Vector3(0, -20, 0));
	}
}
