#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"
#include "Utilities/Vector3.h"

namespace Tapioca {
class Transform;
class RigidBody;
class Animator;
}

class Health;
class GameManager;

class JUEGO_API PlayerMovementController : public Tapioca::Component {
private:
    bool grounded;
    int jumps;
    bool jump;
    bool bounce;
    bool run;
    bool runEnd;
    bool walk;
    Tapioca::Transform* trans;
    Tapioca::RigidBody* rigidBody;
    Tapioca::Animator* anim;
    Health* health;
    int moveX, moveZ;
    float speed;
    float jumpSpeed;
    float bounceSpeed;
    float runSpeed;
    float walkSpeed;
    Tapioca::Vector3 respawnpos;
    Tapioca::Vector3 initialPos;

    GameManager* gManager;

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
    inline bool getGrounded() const { return grounded; }
};
