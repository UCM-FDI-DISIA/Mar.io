#include <cmath>
#include "ChestComponent.h"
#include <Structure/GameObject.h>
#include "Structure/BasicBuilder.h"
#include "Components/Transform.h"
#include "Components/RigidBody.h"
#include "Components/MeshRenderer.h"
#include "CoinComponent.h"
#include "Structure/Scene.h"
#include "Structure/GameObject.h"

namespace MarIo {
template class JUEGO_API Tapioca::BasicBuilder<MarIo::ChestComponent>;

ChestComponent::ChestComponent() { }

ChestComponent::~ChestComponent() { }

bool ChestComponent::initComponent(const CompMap& variables) { return true; }

void ChestComponent::handleEvent(std::string const& id, void* info) {
    //TODO: luego se cambia id por meleAttack
    if (id == "onCollisionEnter") {
        Tapioca::GameObject* player = (Tapioca::GameObject*)info;
        if (player->getHandler() == "Player") {
            CreatCoins(8);
            object->die();
        }
    }
}
void ChestComponent::CreatCoins(int n) {
    float degree = 360.0/n;
    Tapioca::Vector3 pos = object->getComponent<Tapioca::Transform>()->getGlobalPosition();
    for (int i = 0; i < n; ++i) {
        Tapioca::GameObject* coin = new Tapioca::GameObject();
        Tapioca::Transform* tr = new Tapioca::Transform();

        float angle = degree*i * 3.14 / 180.0;   // Convertir a radianes
        //// Calcular el seno y el coseno
        float sinValue = std::sinf(angle);
        float cosValue = std::cosf(angle);
        coin->addComponent(tr, tr->id);
        tr->setScale(Tapioca::Vector3(0.5));
        tr->setPosition(pos + Tapioca::Vector3(sinValue, 1, cosValue) * 5);

        Tapioca::RigidBody* rb = new Tapioca::RigidBody();
        rb->setColliderShape(Tapioca::ColliderShape::BOX_SHAPE);
        rb->setColliderScale(Tapioca::Vector3(2,2,1));
        rb->setMomeventType(Tapioca::MovementType::DYNAMIC_OBJECT);
        rb->setDamping(0);
        rb->setMass(1);
        rb->setTrigger(false);
        coin->addComponent(rb, rb->id);

        Tapioca::MeshRenderer* mesh = new Tapioca::MeshRenderer();
        mesh->setMeshName("meshes/coin.mesh");
        mesh->setMaterialName("gold_coin_texture");
        coin->addComponent(mesh, mesh->id);

        coin->addComponent<CoinComponent>();
        object->getScene()->addObject(coin);

        coin->awake();
        coin->start();

        rb->addForce(Tapioca::Vector3(sinValue,1,cosValue) * 500);
    }
}
}