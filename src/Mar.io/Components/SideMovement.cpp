#include "SideMovement.h"
#include "Structure/BasicBuilder.h"
#include "Structure/GameObject.h"
#include "Components/Transform.h"
#include "Structure/MainLoop.h"
#include "Structure/Scene.h"

template class JUEGO_API Tapioca::BasicBuilder<SideMovement>;

SideMovement::SideMovement()
    : movementDistance(0), state(going), movSpd(1.0f), rotSpd(1.0f), initPos(Tapioca::Vector3(0)),
      nextPos(Tapioca::Vector3(0)), initDir(Tapioca::Vector3(0)), dir(Tapioca::Vector3(0)), rot(0), 
      initRot(0), transform(nullptr) { }

SideMovement::~SideMovement() { transform = nullptr; }

bool SideMovement::initComponent(const CompMap& variables) { 
    // Hay que especificar vida maxima
    if (!setValueFromMap(movementDistance, "movementDistance", variables)) {
        Tapioca::logError("SideMovement: No hay distancia de movimiento establecida.");
        return false;
    }

    bool initDirSet = setValueFromMap(initDir.x, "initDirX", variables) &&
                      setValueFromMap(initDir.y, "initDirY", variables) && 
                      setValueFromMap(initDir.z, "initDirZ", variables);
    if (!initDirSet) {
        Tapioca::logError("SideMovement: No hay direccion inicial establecida.");
        return false;
    }
    initDir.normalize();

    if (!setValueFromMap(movSpd, "movSpd", variables)) {
        Tapioca::logInfo(("SideMovement: No hay velocidad de movimiento establecida. Se pondra a " + std::to_string(movSpd) + ".").c_str());
    }

    if (!setValueFromMap(rotSpd, "rotSpd", variables)) {
        Tapioca::logInfo(("SideMovement: No hay velocidad de rotacion establecida. Se pondra a " + std::to_string(rotSpd) + ".").c_str());
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
    initRot = transform->getRotation().toEuler().y;
    
    dir = nextPos - transform->getGlobalPosition() ;
    dir.normalize();
}

void SideMovement::update(const uint64_t deltaTime) { 
    if (state == going || state == coming) {
        Tapioca::Vector3 movement = dir * movSpd * deltaTime / 1000.0f;
        transform->translate(movement);
        if (transform->getGlobalPosition().distance(nextPos) <= THRESHOLD) {
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

            dir = nextPos - transform->getGlobalPosition();
            dir.normalize();
        }
    }
    else if (state == turningBack) {
        rot -= rotSpd * deltaTime / 1000.0f;
        transform->setRotation(Tapioca::Vector3(0, initRot + rot, 0));

        if (rot <= 0) {
            nextPos = initPos + initDir * movementDistance;
            state = going;

            dir = nextPos - transform->getGlobalPosition();
            dir.normalize();
        }
    }
}
