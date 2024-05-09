#include "LevelScore.h"
#include "Structure/GameObject.h"
#include "Structure/BasicBuilder.h"
#include "Structure/Scene.h"
#include "Components/Text.h"
#include "GameManager.h"
#include "Score.h"

void LevelScore::start() {
    Tapioca::GameObject* coinsObject = object->getScene()->getHandler("coinsText");
    if (coinsObject != nullptr) {
        std::string s = std::to_string(GameManager::instance()->getScore());
        coinsObject->getComponent<Tapioca::Text>()->setText(s);
    }
}