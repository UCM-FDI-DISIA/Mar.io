#include "DoDamageComponent.h"

#include "Structure/BasicBuilder.h"

#include <Structure/GameObject.h>
#include "HealthComponent.h"
#include <Structure/Game.h>
#include <Structure/Scene.h>

template class JUEGO_API Tapioca::BasicBuilder<DoDamageComponent>;


DoDamageComponent::DoDamageComponent() : damage(0), player(nullptr) { }

DoDamageComponent::~DoDamageComponent() { }

bool DoDamageComponent::initComponent(const CompMap& variables) { 
    // Hay que especificar vida maxima
    if (!setValueFromMap(damage, "damage", variables)) {
#ifdef _DEBUG
        std::cerr << "Error: DoDamageComponent: no se ha establecido dano a realizar.\n";
#endif
        return false;
    }
    return true;
}

void DoDamageComponent::awake() {
    player = Tapioca::Game::instance()->getTopScene()->getHandler("Player"); 
}

void DoDamageComponent::handleEvent(std::string const& id, void* info) {
    //TODO: luego se cambia id por meleAttack
    if (id == "onCollisionStay") {
        Tapioca::GameObject* object = (Tapioca::GameObject*)info;
        HealthComponent* health = object->getComponent<HealthComponent>();
        if (health != nullptr) {
            health->loseHP(damage);

            if (object == player && health->getHP() <= 0) {
                // TODO: Terminar la partida
            }
            else {
                // TODO: Matar a enemigo en especifico
                object->die();
            }
        }
    }
}