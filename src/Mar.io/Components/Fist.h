#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

namespace Tapioca {
class Animator;
}

class JUEGO_API Fist : public Tapioca::Component {
private:
    Tapioca::Animator* parentAnim;
    float coolDown;
    float duration;
    float cont;
    bool canHit;
    bool onAttack;
    int damage;

public:
    COMPONENT_ID("Fist");

    Fist();

    void start() override;

    bool initComponent(const CompMap& variables) override;
    void update(const uint64_t deltaTime) override;
    void handleEvent(std::string const& id, void* info) override;
};
