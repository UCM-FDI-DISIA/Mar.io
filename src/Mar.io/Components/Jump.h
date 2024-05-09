#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"
#include "Utilities/Vector3.h"

class PlayerMovementController;

class JUEGO_API Jump : public Tapioca::Component {
private:
    PlayerMovementController* playerMovementController;
    int damage;
    int jumpsNumber;
    bool grounded;
    int jumps;
    bool jump;
    float jumpSpeed;
    float bounceSpeed;
    bool bounce;

public:
    COMPONENT_ID("Jump");

    Jump();

    void start() override;

    bool initComponent(const CompMap& variables) override;

    void update(const uint64_t deltaTime) override;

    void handleEvent(std::string const& id, void* info) override;

    void reset();

    inline bool isGrounded() const { return grounded; }

    inline bool isJumping() const { return jump; }

    inline float getJumpSpeed() const { return jumpSpeed; }

    inline bool isBouncing() const { return bounce; }

    inline float getBounceSpeed() const { return bounceSpeed; }

    inline void setJump(bool enable) { jump = enable; }

    inline void setBounce(bool enable) { bounce = enable; }
};
