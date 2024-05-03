#include "Heart.h"
#include "Structure/GameObject.h"
#include "Components/RigidBody.h"
#include "Structure/BasicBuilder.h"
#include "Health.h"

template class JUEGO_API Tapioca::BasicBuilder<Heart>;

Heart::Heart() : points(1) { }

bool Heart::initComponent(const CompMap& variables) {
    if (!setValueFromMap(points, "heal", variables)) {
        Tapioca::logInfo(("Heart: No se ha establecido la vida que otorga. Se establece a " +
                          std::to_string(points) + " por defecto.")
                             .c_str());
    }

    return true;
}

void Heart::start() {
    Tapioca::RigidBody* rb = object->getComponent<Tapioca::RigidBody>();
}

void Heart::handleEvent(std::string const& id, void* info) {
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