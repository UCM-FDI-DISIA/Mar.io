#include "HealthComponent.h"

#include "Structure/BasicBuilder.h"

template class JUEGO_API Tapioca::BasicBuilder<HealthComponent>;


HealthComponent::HealthComponent() : currHealth(0), maxHealth(0), gracePeriod(0.0f), timer(0), invulnerable(false) { }

HealthComponent::~HealthComponent() { }

bool HealthComponent::initComponent(const CompMap& variables) { 
    // Hay que especificar vida maxima
    if (!setValueFromMap(maxHealth, "maxHealth", variables)) {
#ifdef _DEBUG
        std::cerr << "Error: HealthComponent: no se ha establecido vida maxima.\n";
#endif
        return false;
    }

        // Si no hay vida actual especificada, se le pone la vida maxima por defecto
    if (!setValueFromMap(currHealth, "currHealth", variables)) {
#ifdef _DEBUG
        std::cout << "HealthComponent: no se ha establecido vida actual, se pondra a " << maxHealth
                  << " por defecto.\n ";
#endif
        currHealth = maxHealth;
    }

    // Hay que especificar vida maxima
    if (!setValueFromMap(gracePeriod, "gracePeriod", variables)) {
#ifdef _DEBUG
        std::cerr << "Error: HealthComponent: no se ha establecido periodo de gracia.\n";
#endif
        return false;
    }

    return true;
}

void HealthComponent::update(const uint64_t deltaTime) {
    if (invulnerable) {
        timer += deltaTime;
        if (timer / 1000.0f >= gracePeriod) {
            invulnerable = false;
        }
    }

}

void HealthComponent::loseHP(int hp) { 
    if (!invulnerable) {
        currHealth -= hp;
        invulnerable = true;
        timer = 0;

#ifdef _DEBUG
        std::cout << "Me hicieron damages y ahora tengo " << currHealth << " de vida.\n ";
#endif    
    }

}

void HealthComponent::healHP(int hp) { 
    currHealth += hp;
    if (currHealth > maxHealth) currHealth = maxHealth;
}

void HealthComponent::restoreHealth() { currHealth = maxHealth; }

int HealthComponent::getHP() { return currHealth; }

