#include "EnemyHealth.h"
#include "Structure/BasicBuilder.h"
#include "Structure/GameObject.h"

EnemyHealth::EnemyHealth() : currHealth(1), damageReceived(false) { }

bool EnemyHealth::initComponent(const CompMap& variables) {
    // Si no hay vida actual especificada, se le pone la vida maxima por defecto
    if (!setValueFromMap(currHealth, "currHealth", variables)) {
        Tapioca::logInfo(
            ("EnemyHealth: No se ha establecido vida actual, se pondra a " + std::to_string(1) + " por defecto.")
                .c_str());
    }

    return true;
}

void EnemyHealth::loseHP(int hp) {
    if (!damageReceived) {
        damageReceived = true;
        currHealth -= hp;
        if (currHealth <= 0) {
            object->die();
        }
    }
}