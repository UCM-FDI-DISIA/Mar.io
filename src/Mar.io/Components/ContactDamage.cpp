#include "ContactDamage.h"
#include "Structure/BasicBuilder.h"
#include "Structure/GameObject.h"
#include "Health.h"
#include "Structure/Scene.h"

template class JUEGO_API Tapioca::BasicBuilder<ContactDamage>;

ContactDamage::ContactDamage() : damage(0), player(nullptr) { }

ContactDamage::~ContactDamage() { player = nullptr; }

bool ContactDamage::initComponent(const CompMap& variables) { 
    // Hay que especificar vida maxima
    if (!setValueFromMap(damage, "damage", variables)) {
        Tapioca::logError("ContactDamage: No se ha establecido dano a realizar.");
        return false;
    }
    return true;
}

void ContactDamage::awake() {
    player = object->getScene()->getHandler("Player"); 
}

void ContactDamage::handleEvent(std::string const& id, void* info) {
    if (id == "onCollisionStay") {
        Tapioca::GameObject* object = (Tapioca::GameObject*)info;
        if (object == player) {
            Health* health = object->getComponent<Health>();
            if (health != nullptr) {
                health->loseHP(damage);

                if (health->getHP() <= 0) pushEvent("ev_GameOver", this, true);
            }
        }
    }
}