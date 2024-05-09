#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"
#include "Utilities/Vector3.h"

namespace Tapioca {
class Transform;
class RigidBody;
class Animator;
class AudioSourceComponent;
}

class Health;
class GameManager;
class Jump;

class JUEGO_API PlayerMovementController : public Tapioca::Component {
private:
    Jump* jump;
    bool run;
    bool runEnd;
    bool walk;
    Tapioca::Transform* trans;
    Tapioca::RigidBody* rigidBody;
    Tapioca::Animator* anim;
    Health* health;
    int moveX, moveZ;
    float speed;
    float runSpeed;
    float walkSpeed;
    Tapioca::Vector3 respawnpos;
    Tapioca::Vector3 initialPos;

public:
    COMPONENT_ID("PlayerMovementController");

    PlayerMovementController();

    ~PlayerMovementController();

    bool initComponent(const CompMap& variables) override;
    void start() override;
    void update(const uint64_t deltaTime) override;
    void fixedUpdate() override;
    void handleEvent(std::string const& id, void* info) override;

    void reset();

    inline void setWalk(bool enable) { walk = enable; }
};
