#include "FeetDamage.h"
#include "Structure/GameObject.h"
#include "Structure/BasicBuilder.h"
#include "EnemyHealth.h"
#include "checkML.h"
#include "Components/Transform.h"
#include "Components/Chest.h"

FeetDamage::FeetDamage() : damage(1) { }

bool FeetDamage::initComponent(const CompMap& variables) {
    if (!setValueFromMap(damage, "damage", variables)) {
        Tapioca::logInfo(("FeetDamage: No se ha indica el daño que realiza. Se establece a " + std::to_string(damage) +
                          " por defecto.")
                             .c_str());
    }
    return true;
}

void FeetDamage::handleEvent(std::string const& id, void* info) {
    if (id == "onCollisionEnter" || id == "onCollisionStay") {
        Tapioca::GameObject* colObject = (Tapioca::GameObject*)info;
        if (colObject != nullptr) {
            EnemyHealth* enemyHealth = colObject->getComponent<EnemyHealth>();
            Tapioca::Transform* transform = colObject->getComponent<Tapioca::Transform>();
            // lo que caracteriza al enemigo tortuga es que es un enemigo (EnemyHealth)
            // y que tiene un objeto hijo que es su caparazon
            if (enemyHealth != nullptr && transform->getChildren().size() <= 0) {
                enemyHealth->loseHP(damage);
            }
            else {
                Chest* chest = colObject->getComponent<Chest>();
                if (chest != nullptr) {
                    chest->openChest();
                }
            }
        }
    }

    if (id == "onCollisionExit") {
        Tapioca::GameObject* colObject = (Tapioca::GameObject*)info;
        EnemyHealth* enemyHealth = colObject->getComponent<EnemyHealth>();
        if (enemyHealth != nullptr) {
            enemyHealth->canReceiveDamage();
        }
    }
}
