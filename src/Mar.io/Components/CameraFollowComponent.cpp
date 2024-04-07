#include "CameraFollowComponent.h"

#include "Structure/BasicBuilder.h"

#include <Structure/GameObject.h>
#include <Components/Transform.h>
#include <Components/CameraComponent.h>
#include <Structure/Game.h>
#include <Structure/Scene.h>
#include <Utilities/Quaternion.h>

template class JUEGO_API Tapioca::BasicBuilder<CameraFollowComponent>;


CameraFollowComponent::CameraFollowComponent() 
    : transform(nullptr), targetTransform(nullptr), camera(nullptr), targetName(""), smoothSpeed(DEF_SMOOTH_SPD), offset(DEF_OFFSET),
      rotationSpeed(DEF_ROT_SPD) { }

CameraFollowComponent::~CameraFollowComponent() { }

bool CameraFollowComponent::initComponent(const CompMap& variables) { 
    // Si no hay objetivo especificado
    if (!setValueFromMap(targetName, "target", variables) || targetName == "") {
#ifdef _DEBUG
        if (targetName == "") std::cout << "Error: CameraFollow: no se ha especificado objetivo.\n";
        else std::cerr << "Error: CameraFollow: no se ha encontrado el objetivo " << targetName << ".\n";

#endif
        return false;
    }

    // Da igual si no hay offset o velocidades establecidas, ya que se ponen unas por defecto
    if (!setValueFromMap(offset.x, "offsetX", variables)) {
#ifdef _DEBUG
        std::cout << "CameraFollow: no se ha encontrado offsetX, se pondra a " << DEF_OFFSET.x << " por defecto.\n ";
#endif
    }
    if (!setValueFromMap(offset.y, "offsetY", variables)) {
#ifdef _DEBUG
        std::cout << "CameraFollow: no se ha encontrado offsetY, se pondra a " << DEF_OFFSET.y << " por defecto.\n ";
#endif
    }
    if (!setValueFromMap(offset.z, "offsetZ", variables)) {
#ifdef _DEBUG
        std::cout << "CameraFollow: no se ha encontrado offsetZ, se pondra a " << DEF_OFFSET.z << " por defecto.\n ";
#endif
    }
    if (!setValueFromMap(smoothSpeed, "smoothSpeed", variables)) {
#ifdef _DEBUG
        std::cout << "CameraFollow: no se ha encontrado smoothSpeed, se pondra a " << DEF_SMOOTH_SPD
                  << " por defecto.\n ";
#endif
    }
    if (!setValueFromMap(rotationSpeed, "rotationSpeed", variables)) {
#ifdef _DEBUG
        std::cout << "CameraFollow: no se ha encontrado rotationSpeed, se pondra a " << DEF_ROT_SPD
                  << " por defecto.\n ";
#endif
    }

    return true;
}

void CameraFollowComponent::awake() {
    Tapioca::GameObject* gameobject = getObject();
    transform = gameobject->getComponent<Tapioca::Transform>();
    camera = gameobject->getComponent<Tapioca::CameraComponent>();


    // Si el objetivo no esta en la escena
    Tapioca::GameObject* target = object->getScene()->getHandler(targetName);
    if (target == nullptr) {
#ifdef _DEBUG
        std::cerr << "Error: CameraFollow: el objetivo " << targetName << " no esta en la escena.\n";
#endif
    }

    // Si el objetivo no tiene transform
    targetTransform = target->getComponent<Tapioca::Transform>();
    if (targetTransform == nullptr) {
#ifdef _DEBUG
        std::cerr << "Error: CameraFollow: no se ha podido obtener el transform del objetivo.\n";
#endif
    }
}

void CameraFollowComponent::start() {
    transform->setPosition(targetTransform->getGlobalPosition() + offset);
}


void CameraFollowComponent::update(const uint64_t deltaTime) {
    Tapioca::Vector3 nextPos = targetTransform->getPosition() + offset;
    Tapioca::Vector3 smoothPos = Tapioca::Vector3::lerp(transform->getPosition(), nextPos, smoothSpeed);
    transform->setPosition(smoothPos);

}
