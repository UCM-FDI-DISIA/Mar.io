#include "ContactDamage.h"
#include "Structure/BasicBuilder.h"
#include "Structure/GameObject.h"
#include "Health.h"
#include "Structure/Scene.h"

template class JUEGO_API Tapioca::BasicBuilder<ContactDamage>;

ContactDamage::ContactDamage() : damage(1), player(nullptr) { }

ContactDamage::~ContactDamage() { player = nullptr; }

bool ContactDamage::initComponent(const CompMap& variables) {
    if (!setValueFromMap(damage, "damage", variables)) {
        Tapioca::logInfo(("ContactDamage: No se ha establecido el dano que produce. Se establece a " +
                          std::to_string(damage) + " por defecto.")
                             .c_str());
    }
    return true;
}

void ContactDamage::awake() { player = object->getScene()->getHandler("Player"); }

void ContactDamage::handleEvent(std::string const& id, void* info) {
    if (id == "onCollisionStay") {
        Tapioca::GameObject* object = (Tapioca::GameObject*)info;
        if (object == player) {
            Health* health = object->getComponent<Health>();
            if (health != nullptr) {
                health->loseHP(damage);
            }
        }
    }
}