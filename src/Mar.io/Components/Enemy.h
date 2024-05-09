#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"
#include "Utilities/Vector3.h"

namespace Tapioca {
class Transform;
class RigidBody;
}

class Health;

class JUEGO_API Enemy : public Tapioca::Component {
private:
    Health* health;
    Tapioca::Transform* trans;
    Tapioca::RigidBody* rigidBody;
    int tEnemy;

public:
    COMPONENT_ID("Enemy");

    enum eType { TURTLE, CRAB, MORAY };

    Enemy();

    ~Enemy();

    bool initComponent(const CompMap& variables) override;
    void start() override;
    void update(const uint64_t deltaTime) override;
    void fixedUpdate() override;
    void handleEvent(std::string const& id, void* info) override;

    int getEnemyType();
};
