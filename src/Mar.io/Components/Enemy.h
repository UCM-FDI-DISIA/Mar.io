#pragma once
#include <Structure/Component.h>
#include "../gameDefs.h"
#include "Utilities/Vector3.h"

namespace Tapioca {
class Transform;
class RigidBody;
}

class Health;

namespace MarIo {
class JUEGO_API Enemy : public Tapioca::Component {
private:
    Health* health;
    Tapioca::Transform* trans;
    Tapioca::RigidBody* rigidBody;

public:
    COMPONENT_ID("Enemy");

    Enemy();
    ~Enemy();

    bool initComponent(const CompMap& variables) override;
    void start() override;
    void update(const uint64_t deltaTime) override;
    void fixedUpdate() override;
    void handleEvent(std::string const& id, void* info) override;
};
}
