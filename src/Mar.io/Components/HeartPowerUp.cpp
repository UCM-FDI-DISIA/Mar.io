#include "HeartPowerUp.h"
#include "Structure/GameObject.h"
#include "Components/RigidBody.h"
#include "Structure/BasicBuilder.h"
#include "Health.h"

template class JUEGO_API Tapioca::BasicBuilder<HeartPowerUp>;

HeartPowerUp::HeartPowerUp() : points(1) { }

bool HeartPowerUp::initComponent(const CompMap& variables) {
    if (!setValueFromMap(points, "heal", variables)) {
        Tapioca::logInfo(("HeartPowerUp: No se ha establecido la vida que otorga. Se establece a " +
                          std::to_string(points) + " por defecto.")
                             .c_str());
    }

    return true;
}

void HeartPowerUp::start() {
    Tapioca::RigidBody* rb = object->getComponent<Tapioca::RigidBody>();
}

void HeartPowerUp::handleEvent(std::string const& id, void* info) {
    if (id == "onCollisionEnter") {
        Tapioca::GameObject* player = (Tapioca::GameObject*)info;
        if (player->getHandler() == "Player") {
            Health* health = player->getComponent<Health>();
            if (health != nullptr) {
                health->healHP(points);
            }
            object->die();
        }
    }
}