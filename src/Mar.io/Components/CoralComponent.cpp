#include "CoralComponent.h"

#include "Structure/BasicBuilder.h"

#include <Structure/GameObject.h>
#include "HealthComponent.h"
#include <Structure/Game.h>
#include <Structure/Scene.h>

template class JUEGO_API Tapioca::BasicBuilder<CoralComponent>;


CoralComponent::CoralComponent() : damage(0), player(nullptr) { }

CoralComponent::~CoralComponent() { }

bool CoralComponent::initComponent(const CompMap& variables) { 
    // Hay que especificar vida maxima
    if (!setValueFromMap(damage, "damage", variables)) {
#ifdef _DEBUG
        std::cerr << "Error: CoralComponent: no se ha establecido dano a realizar.\n";
#endif
        return false;
    }
    return true;
}

void CoralComponent::awake() {
    player = Tapioca::Game::instance()->getTopScene()->getHandler("Player"); 
}

void CoralComponent::handleEvent(std::string const& id, void* info) {
    if (id == "onCollisionStay") {
        Tapioca::GameObject* object = (Tapioca::GameObject*)info;
        if (object == player) {
            HealthComponent* health = object->getComponent<HealthComponent>();
            if (health != nullptr) {
                health->loseHP(damage);

                if (health->getHP() <= 0) pushEvent("ev_GameOver", this, true);
            }
        }
    }
}