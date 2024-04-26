#include "Score.h"
#include "Structure/BasicBuilder.h"
#include "Structure/GameObject.h"
#include "Health.h"

template class JUEGO_API Tapioca::BasicBuilder<Score>;

Score::Score() : coins(0), coinsForALife(100), health(nullptr), heal(1) { }

bool Score::initComponent(const CompMap& variables) {
    if (!setValueFromMap(coinsForALife, "coinsForALife", variables)) {
        Tapioca::logInfo(
            ("Score: No se ha establecido el numero de monedas a partir del cual se obtiene una vida. Se establece a " +
             std::to_string(coinsForALife) + " por defecto.")
                .c_str());
    }

    if (!setValueFromMap(heal, "heal", variables)) {
        Tapioca::logInfo(("Score: No se ha establecido la cantidad de vida a curar cuando se supera el limite de "
                          "monedas. Se establece a " +
                          std::to_string(heal) + " por defecto.")
                             .c_str());
    }

    return true;
}

void Score::start() { health = object->getComponent<Health>(); }

void Score::addCoin() {
    ++coins;
    if (coins >= coinsForALife) {
        if (health != nullptr) {
            health->healHP(heal);
        }
        coins -= coinsForALife;
    }
}