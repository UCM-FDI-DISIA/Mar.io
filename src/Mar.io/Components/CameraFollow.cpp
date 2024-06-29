#include "CameraFollow.h"
#include "Structure/BasicBuilder.h"
#include "Structure/GameObject.h"
#include "Components/Transform.h"
#include "Components/CameraComponent.h"
#include "Structure/Scene.h"
#include "PhysicsManager.h"

CameraFollow::CameraFollow()
    : transform(nullptr), targetTransform(nullptr), camera(nullptr), targetName(""), smoothSpeed(DEF_SMOOTH_SPD),
      offset(DEF_OFFSET), rotationSpeed(DEF_ROT_SPD) { }

CameraFollow::~CameraFollow() {
    transform = nullptr;
    targetTransform = nullptr;
    camera = nullptr;
}

bool CameraFollow::initComponent(const CompMap& variables) {
    // Si no hay objetivo especificado
    if (!setValueFromMap(targetName, "target", variables) || targetName == "") {
        if (targetName == "") Tapioca::logError("CameraFollow: no se ha especificado objetivo.");
        else
            Tapioca::logError(("CameraFollow: No se ha encontrado el objetivo \"" + targetName + "\".").c_str());
        return false;
    }

    // Da igual si no hay offset o velocidades establecidas, ya que se ponen unas por defecto
    if (!setValueFromMap(offset.x, "offsetX", variables)) {
        Tapioca::logInfo(
            ("CameraFollow: No se ha encontrado offsetX, se pondra a " + std::to_string(DEF_OFFSET.x) + " por defecto.")
                .c_str());
    }
    if (!setValueFromMap(offset.y, "offsetY", variables)) {
        Tapioca::logInfo(
            ("CameraFollow: No se ha encontrado offsetY, se pondra a " + std::to_string(DEF_OFFSET.y) + " por defecto.")
                .c_str());
    }
    if (!setValueFromMap(offset.z, "offsetZ", variables)) {
        Tapioca::logInfo(
            ("CameraFollow: No se ha encontrado offsetZ, se pondra a " + std::to_string(DEF_OFFSET.z) + " por defecto.")
                .c_str());
    }
    if (!setValueFromMap(smoothSpeed, "smoothSpeed", variables)) {
        Tapioca::logInfo(("CameraFollow: No se ha encontrado smoothSpeed, se pondra a " +
                          std::to_string(DEF_SMOOTH_SPD) + " por defecto.")
                             .c_str());
    }
    if (!setValueFromMap(rotationSpeed, "rotationSpeed", variables)) {
        Tapioca::logInfo(("CameraFollow: No se ha encontrado rotationSpeed, se pondra a " +
                          std::to_string(DEF_ROT_SPD) + " por defecto.")
                             .c_str());
    }

    return true;
}

void CameraFollow::awake() {
    transform = object->getComponent<Tapioca::Transform>();
    camera = object->getComponent<Tapioca::CameraComponent>();

    // Si el objetivo no esta en la escena
    Tapioca::GameObject* target = object->getScene()->getHandler(targetName);
    if (target == nullptr || camera == nullptr) {
        Tapioca::logError(("CameraFollow: El objetivo \"" + targetName + "\" no esta en la escena.").c_str());
        alive = active = false;
    }
    else {
        // Si el objetivo no tiene transform
        targetTransform = target->getComponent<Tapioca::Transform>();
        if (targetTransform == nullptr) {
            Tapioca::logError("CameraFollow: No se ha podido obtener el transform del objetivo.");
        }
    }
}

void CameraFollow::start() {
    if (alive) transform->setPosition(targetTransform->getGlobalPosition() + offset);
}

void CameraFollow::fixedUpdate() {
    int maxDistance = 10;
    int corners = 5;
    float yOffset = 4;
    float zOffset = 1;

    bool col = false;

    // Parametros necesarios para el raycast
    Tapioca::RigidBody* rb;
    Tapioca::Vector3 start = targetTransform->getGlobalPosition() + startOffset;
    Tapioca::Vector3 end;
    Tapioca::Vector3 normal;

    // Reseteamos la rotación y la orientamos hacia el player
    transform->setRotation(0);
    camera->lookAt(targetTransform->getGlobalPositionWithoutRotation());

    Tapioca::Vector3 nextPos;
    float dis = FLT_MAX;
    for (int i = 0; i < corners; i++) {
        // Comprobamos colisiones aproximando las 4 esquinas del nearplane de la cámara
        switch (i) {
        case 0: end = targetTransform->getGlobalPosition() + Tapioca::Vector3(1, 1, 0) + offset; break;
        case 1: end = targetTransform->getGlobalPosition() + Tapioca::Vector3(-1, 1, 0) + offset; break;
        case 2: end = targetTransform->getGlobalPosition() + Tapioca::Vector3(-1, -1, 0) + offset; break;
        case 3: end = targetTransform->getGlobalPosition() + Tapioca::Vector3(1, -1, 0) + offset; break;
        case 4: end = targetTransform->getGlobalPosition() + endOffset; break;
        }
        // Colisión
        if (Tapioca::PhysicsManager::instance()->Raycast(start, end, normal, rb)) {
            col = true;
            if (normal.magnitude() < dis) {
                dis = normal.magnitude();
                nextPos = Tapioca::Vector3(end.x + normal.x, start.y + yOffset, end.z - zOffset);
            }
        }
    }
    // No colisión
    if (!col) {
        nextPos = targetTransform->getGlobalPosition() + offset;
    }

    Tapioca::Vector3 smoothPos = transform->getPosition().lerp(nextPos, smoothSpeed);
    transform->setPosition(smoothPos);
}
