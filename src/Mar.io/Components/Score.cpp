#include "Score.h"
#include "Structure/BasicBuilder.h"
#include "Structure/GameObject.h"
#include "Health.h"
#include "GameManager.h"
#include "Components/Text.h"
#include "Structure/GameObject.h"
#include "Structure/Scene.h"

template class JUEGO_API Tapioca::BasicBuilder<Score>;

Score::Score() : score(0), numScorePerLife(100), health(nullptr), heal(1), coinsText(nullptr) { }

bool Score::initComponent(const CompMap& variables) {
    if (!setValueFromMap(numScorePerLife, "numScorePerLife", variables)) {
        Tapioca::logInfo(
            ("Score: No se ha establecido el numero de monedas a partir del cual aumenta la vida. Se establece a " +
             std::to_string(numScorePerLife) + " por defecto.")
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

void Score::start() {
    health = object->getComponent<Health>();
    Tapioca::GameObject* coinsObject = object->getScene()->getHandler("coinsText");
    if (coinsObject != nullptr) coinsText = coinsObject->getComponent<Tapioca::Text>();
}

void Score::increaseScore(int increasement) {
    score += increasement;
    GameManager::instance()->increasePuntuaction(increasement);
    if (score >= numScorePerLife) {
        if (health != nullptr) {
            health->healHP(heal);
        }
        score -= numScorePerLife;
        if (score < 0) {
            score = 0;
        }
    }

    if (coinsText != nullptr) coinsText->setText(std::to_string(score) + "X");
}