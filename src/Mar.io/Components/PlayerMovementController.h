#pragma once
#include <Structure/Component.h>
#include "../gameDefs.h"

namespace Tapioca {
class Transform;
class RigidBody;
}

namespace MarIo {
class JUEGO_API PlayerMovementController : public Tapioca::Component {
private:
    bool grounded = true;
    int jumps = 0;
    bool jump = false;
    Tapioca::Transform* trans;
    Tapioca::RigidBody* rigidBody;
    int moveX, moveZ;
    float speed;

public:
    COMPONENT_ID("PlayerMovementController");

    PlayerMovementController();
    ~PlayerMovementController();

    bool initComponent(const CompMap& variables) override;
    void start() override;
    void update(const uint64_t deltaTime) override;
    void fixedUpdate() override;
    void handleEvent(std::string const& id, void* info) override;
};
}
