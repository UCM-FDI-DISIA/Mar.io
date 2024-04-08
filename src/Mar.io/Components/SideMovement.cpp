#include "SideMovement.h"

#include "Structure/BasicBuilder.h"

#include <Structure/GameObject.h>
#include <Components/Transform.h>
#include <Structure/Game.h>
#include <Structure/Scene.h>
template class JUEGO_API Tapioca::BasicBuilder<SideMovement>;


SideMovement::SideMovement()
    : movementDistance(0), state(going), movSpd(1.0f), rotSpd(1.0f), initPos(Tapioca::Vector3(0)),
      nextPos(Tapioca::Vector3(0)), initDir(Tapioca::Vector3(0)), rot(0), initRot(0), transform(nullptr) { }

SideMovement::~SideMovement() { }

bool SideMovement::initComponent(const CompMap& variables) { 
    // Hay que especificar vida maxima
    if (!setValueFromMap(movementDistance, "movementDistance", variables)) {
#ifdef _DEBUG
        std::cerr << "Error: SideMovement: no hay distancia de movimiento establecida.\n";
#endif
        return false;
    }

    bool initDirSet = setValueFromMap(initDir.x, "initDirX", variables) &&
                      setValueFromMap(initDir.y, "initDirY", variables) && 
                      setValueFromMap(initDir.z, "initDirZ", variables);
    if (!initDirSet) {
#ifdef _DEBUG
        std::cerr << "Error: SideMovement: no hay direccion inicial establecida.\n";
#endif
        return false;
    }
    initDir.normalize();

    if (!setValueFromMap(movSpd, "movSpd", variables)) {
#ifdef _DEBUG
        std::cout << "SideMovement: no hay velocidad de movimiento establecida. Se pondra a " << movSpd << ".\n";
#endif
    }

    if (!setValueFromMap(rotSpd, "rotSpd", variables)) {
#ifdef _DEBUG
        std::cout << "SideMovement: no hay velocidad de rotacion establecida. Se pondra a " << rotSpd << ".\n";
#endif
    }

    return true;
}

void SideMovement::awake() {
    Tapioca::GameObject* gameobject = getObject();
    transform = gameobject->getComponent<Tapioca::Transform>();
}

void SideMovement::start() {
    initPos = transform->getGlobalPosition();
    nextPos = initPos + initDir * movementDistance;
    initRot = transform->getRotation().euler().y;
    
    transform->setRotation(Tapioca::Vector3(0, initRot, 0));

}

void SideMovement::update(const uint64_t deltaTime) { 
    if (state == going || state == coming) {
        Tapioca::Vector3 dir = nextPos - transform->getGlobalPosition();
        dir.normalize();

        transform->translate(dir * movSpd * deltaTime / 1000.0f);

        if ((int)transform->getGlobalPosition().distance(nextPos) <= 0) {
            if (state == going) state = turning;
            else state = turningBack;
        }
    }
    else if (state == turning) {
        rot += rotSpd * deltaTime / 1000.0f;
        transform->setRotation(Tapioca::Vector3(0, initRot + rot, 0));

        if (rot >= 180) {
            nextPos = initPos;
            state = coming;
        }
    }
    else if (state == turningBack) {
        rot -= rotSpd * deltaTime / 1000.0f;
        transform->setRotation(Tapioca::Vector3(0, initRot + rot, 0));

        if (rot <= 0) {
            nextPos = initPos + initDir * movementDistance;
            state = going;
        }
    }
}