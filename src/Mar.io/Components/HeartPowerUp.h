#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

class JUEGO_API HeartPowerUp : public Tapioca::Component {
public:
    COMPONENT_ID("HeartPowerUp");

    int points;

    HeartPowerUp();

    bool initComponent(const CompMap& variables) override;
    void start() override;
    void handleEvent(std::string const& id, void* info) override;
};