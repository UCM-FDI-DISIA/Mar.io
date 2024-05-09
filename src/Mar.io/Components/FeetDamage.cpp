#include "FeetDamage.h"
#include "Structure/GameObject.h"
#include "Structure/BasicBuilder.h"
#include "EnemyHealth.h"
#include "Enemy.h"
#include "checkML.h"

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
            Enemy* enemy = colObject->getComponent<Enemy>();
            if (enemy != nullptr && enemy->getEnemyType() != Enemy::TURTLE) {
                EnemyHealth* enemyHealth = colObject->getComponent<EnemyHealth>();
                if (enemyHealth != nullptr) {
                    enemyHealth->loseHP(damage);
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
