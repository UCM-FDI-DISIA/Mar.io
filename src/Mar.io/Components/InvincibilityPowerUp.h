#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

class JUEGO_API InvincibilityPowerUp : public Tapioca::Component {
public:
    COMPONENT_ID("InvincibilityPowerUp");

    float time;

    InvincibilityPowerUp();

    bool initComponent(const CompMap& variables) override;
    void start() override;
    void handleEvent(std::string const& id, void* info) override;
};