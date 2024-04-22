#include "Health.h"

#include "Structure/BasicBuilder.h"

template class JUEGO_API Tapioca::BasicBuilder<Health>;


Health::Health() : currHealth(0), maxHealth(0), gracePeriod(0.0f), timer(0), invulnerable(false) { }

Health::~Health() { }

bool Health::initComponent(const CompMap& variables) { 
    // Hay que especificar vida maxima
    if (!setValueFromMap(maxHealth, "maxHealth", variables)) {
        Tapioca::logError("Health: No se ha establecido vida maxima.");
        return false;
    }

        // Si no hay vida actual especificada, se le pone la vida maxima por defecto
    if (!setValueFromMap(currHealth, "currHealth", variables)) {
        Tapioca::logInfo(("Health: No se ha establecido vida actual, se pondra a " + std::to_string(maxHealth) + " por defecto.").c_str());
        currHealth = maxHealth;
    }

    // Hay que especificar vida maxima
    if (!setValueFromMap(gracePeriod, "gracePeriod", variables)) {
        Tapioca::logError("Health: No se ha establecido periodo de gracia.");
        return false;
    }

    return true;
}

void Health::update(const uint64_t deltaTime) {
    if (invulnerable) {
        timer += deltaTime;
        if (timer / 1000.0f >= gracePeriod) {
            invulnerable = false;
        }
    }

}

void Health::loseHP(int hp) { 
    if (!invulnerable) {
        currHealth -= hp;
        invulnerable = true;
        timer = 0;

        Tapioca::logInfo(("Health: Me hicieron damages y ahora tengo " + std::to_string(currHealth) + " de vida.").c_str());  
    }
    if (currHealth <= 0) {
        Tapioca::logInfo("SE HA MUERTO");
        pushEvent("PLAYER_DEAD",nullptr);
    }

}

void Health::healHP(int hp) { 
    currHealth += hp;
    if (currHealth > maxHealth) currHealth = maxHealth;
}

void Health::restoreHealth() { currHealth = maxHealth; }

int Health::getHP() { return currHealth; }

