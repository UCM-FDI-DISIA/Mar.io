#include "Coral.h"

#include "Structure/BasicBuilder.h"

#include <Structure/GameObject.h>
#include "Health.h"
#include <Structure/Game.h>
#include <Structure/Scene.h>

template class JUEGO_API Tapioca::BasicBuilder<Coral>;


Coral::Coral() : damage(0), player(nullptr) { }

Coral::~Coral() { }

bool Coral::initComponent(const CompMap& variables) { 
    // Hay que especificar vida maxima
    if (!setValueFromMap(damage, "damage", variables)) {
#ifdef _DEBUG
        std::cerr << "Error: Coral: no se ha establecido dano a realizar.\n";
#endif
        return false;
    }
    return true;
}

void Coral::awake() {
    player = Tapioca::Game::instance()->getScene("GameMap1")->getHandler("Player"); 
}

void Coral::handleEvent(std::string const& id, void* info) {
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