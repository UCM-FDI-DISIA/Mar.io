#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"
#include "Utilities/Vector3.h"

namespace Tapioca {
class Transform;
class RigidBody;
}

class Health;

class PlayerMovementController;

class JUEGO_API FallDamage : public Tapioca::Component {
private:
    Health* health;
    Tapioca::Transform* trans;
    float limitFall;
    float fallOffset;
    int damage;

public:
    COMPONENT_ID("FallDamage");

    FallDamage();
    ~FallDamage();

    void start() override;
    bool initComponent(const CompMap& variables) override;
    void update(const uint64_t deltaTime) override;
};
