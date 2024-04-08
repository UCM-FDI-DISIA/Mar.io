#include <cmath>
#include "Chest.h"
#include <Structure/GameObject.h>
#include "Structure/BasicBuilder.h"
#include "Components/Transform.h"
#include "Components/RigidBody.h"
#include "Components/MeshRenderer.h"
#include "Fist.h"
#include "Coin.h"
#include "Structure/Scene.h"
#include "Structure/GameObject.h"

namespace MarIo {
template class JUEGO_API Tapioca::BasicBuilder<MarIo::Chest>;

Chest::Chest() : open(false) { }

Chest::~Chest() { }

bool Chest::initComponent(const CompMap& variables) {
    open = false;
    return true;
}

void Chest::handleEvent(std::string const& id, void* info) {
    //TODO: luego se cambia id por meleAttack
    if (id == "onCollisionStay" && !open) {
        Tapioca::GameObject* player = (Tapioca::GameObject*)info;
        if (player->getComponent<Fist>() != nullptr && player->getComponent<Fist>()->isAttack()) {
            CreatCoins(8);
            CreatOpenChest();
            open = true;
            object->die();
        }
    }
}
void Chest::CreatCoins(int n) {
    float degree = 360.0f / n;
    Tapioca::Vector3 pos = object->getComponent<Tapioca::Transform>()->getGlobalPosition();
    for (int i = 0; i < n; ++i) {
        Tapioca::GameObject* coin = new Tapioca::GameObject();
        Tapioca::Transform* tr = new Tapioca::Transform();

        float angle = degree * i * 3.14f / 180.0f;   // Convertir a radianes
        //// Calcular el seno y el coseno
        float sinValue = std::sinf(angle);
        float cosValue = std::cosf(angle);
        coin->addComponent(tr, tr->id);
        tr->setScale(Tapioca::Vector3(0.5));
        tr->setPosition(pos + Tapioca::Vector3(sinValue, 1, cosValue) * 5);

        Tapioca::RigidBody* rb = new Tapioca::RigidBody();
        rb->setColliderShape(Tapioca::ColliderShape::BOX_SHAPE);
        rb->setColliderScale(Tapioca::Vector3(2, 2, 1));
        rb->setMomeventType(Tapioca::MovementType::DYNAMIC_OBJECT);
        rb->setDamping(0);
        rb->setMass(1);
        rb->setTrigger(false);
        coin->addComponent(rb, rb->id);

        Tapioca::MeshRenderer* mesh = new Tapioca::MeshRenderer();
        mesh->setMeshName("models/coin/coin.mesh");
        coin->addComponent(mesh, mesh->id);

        coin->addComponent<Coin>();
        object->getScene()->addObject(coin);

        coin->awake();
        coin->start();
        rb->setFriction(10);
        rb->addForce(Tapioca::Vector3(sinValue, 1, cosValue) * 500);
    }
}
void Chest::CreatOpenChest() { 
     Tapioca::GameObject* chest = new Tapioca::GameObject();
    Tapioca::Transform* tr = new Tapioca::Transform();
    
    chest->addComponent(tr, tr->id);
    tr->setScale(object->getComponent<Tapioca::Transform>()->getScale());
    tr->setPosition(object->getComponent<Tapioca::Transform>()->getGlobalPosition());

    Tapioca::RigidBody* rb = new Tapioca::RigidBody();
    rb->setColliderShape(Tapioca::ColliderShape::BOX_SHAPE);
    rb->setColliderScale(Tapioca::Vector3(4, 2, 2));
    rb->setMomeventType(Tapioca::MovementType::DYNAMIC_OBJECT);
    rb->setDamping(0);
    rb->setMass(1);
    rb->setTrigger(false);
    chest->addComponent(rb, rb->id);

    Tapioca::MeshRenderer* mesh = new Tapioca::MeshRenderer();
    mesh->setMeshName("models/chest/cofre.mesh");
    chest->addComponent(mesh, mesh->id);
    object->getScene()->addObject(chest);

    chest->awake();
    chest->start();
}
}