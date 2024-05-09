#include "Health.h"
#include "Structure/BasicBuilder.h"
#include "Structure/GameObject.h"
#include "Structure/Scene.h"
#include "Structure/Component.h"
#include "Components/Text.h"
#include "Components/ParticleSystemComponent.h"

Health::Health() : currHealth(1), timer(0), invulnerable(false), livesText(nullptr), pSystem(nullptr) { }

void Health::start() {
    Tapioca::GameObject* livesObject = object->getScene()->getHandler("livesText");
    if (currHealth <= 0) currHealth = 1;

    if (livesObject != nullptr) {
        livesText = livesObject->getComponent<Tapioca::Text>();
        if (livesText != nullptr) livesText->setText("X" + std::to_string(currHealth));
    }
    pSystem = object->getComponent<Tapioca::ParticleSystemComponent>();
}

bool Health::initComponent(const CompMap& variables) {
    // Si no hay vida actual especificada, se le pone la vida maxima por defecto
    if (!setValueFromMap(currHealth, "currHealth", variables)) {
        Tapioca::logInfo(
            ("Health: No se ha establecido vida actual, se pondra a " + std::to_string(1) + " por defecto.").c_str());
    }

    return true;
}

void Health::update(const uint64_t deltaTime) {
    if (invulnerable) {
        timer -= deltaTime;
        if (timer < 0.0f) {
            deactivateInvincibility();
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
            pushEvent("ev_NotWalk", nullptr);
        }
        else {
            pushEvent("ev_LifeLost", nullptr);
        }
    }
}

void Health::healHP(int hp) {
    currHealth += hp;

    if (livesText != nullptr) livesText->setText("X" + std::to_string(currHealth));
}


void Health::setInvencibility(float duration) {
    if (pSystem != nullptr) {
        pSystem->setEmitting(true);
    }
    invulnerable = true;
    timer = std::max(timer, (int64_t)duration);
}

void Health::deactivateInvincibility() {
    if (pSystem != nullptr) {
        pSystem->setEmitting(false);
    }
    timer = 0;
    invulnerable = false;
}