#include "Health.h"
#include "Structure/BasicBuilder.h"
#include "Structure/GameObject.h"
#include "Structure/Scene.h"
#include "Structure/Component.h"
#include "Components/Text.h"

template class JUEGO_API Tapioca::BasicBuilder<Health>;

Health::Health() : currHealth(0), maxHealth(0), timer(0), invulnerable(false), livesText(nullptr) { }

void Health::start() {
    Tapioca::GameObject* livesObject = object->getScene()->getHandler("livesText");
    if (livesObject != nullptr) {
        livesText = livesObject->getComponent<Tapioca::Text>();
        if (livesText != nullptr) livesText->setText("X" + std::to_string(currHealth));
    }
}

bool Health::initComponent(const CompMap& variables) {
    // Hay que especificar vida maxima
    if (!setValueFromMap(maxHealth, "maxHealth", variables)) {
        Tapioca::logError("Health: No se ha establecido vida maxima.");
        return false;
    }

    // Si no hay vida actual especificada, se le pone la vida maxima por defecto
    if (!setValueFromMap(currHealth, "currHealth", variables)) {
        Tapioca::logInfo(
            ("Health: No se ha establecido vida actual, se pondra a " + std::to_string(maxHealth) + " por defecto.")
                .c_str());
        currHealth = maxHealth;
    }

    return true;
}

void Health::update(const uint64_t deltaTime) {
    if (invulnerable) {
        timer -= deltaTime;
        Tapioca::logInfo(std::to_string(timer).c_str());
        if (timer < 0.0f) {
            invulnerable = false;
        }
    }
}

void Health::loseHP(int hp) {
    if (!invulnerable) {
        currHealth -= hp;
        invulnerable = true;
        timer = 0;

        if (livesText != nullptr) {
            livesText->setText("X" + std::to_string(currHealth));
        }
        if (currHealth <= 0) {
            pushEvent("ev_GameOver", nullptr);
        }
        else {
            pushEvent("ev_LifeLost", nullptr);
        }
    }
}

void Health::healHP(int hp) {
    currHealth += hp;
    if (currHealth > maxHealth) currHealth = maxHealth;

    if (livesText != nullptr) {
        livesText->setText("X" + std::to_string(currHealth));
    }
}

void Health::restoreHealth() {
    currHealth = maxHealth;
    if (livesText != nullptr) {
        livesText->setText("X" + std::to_string(currHealth));
    }
}

int Health::getHP() { return currHealth; }

void Health::setInvencibility(float duration) {
    invulnerable = true;
    timer = std::max(timer, (int64_t)duration);
}