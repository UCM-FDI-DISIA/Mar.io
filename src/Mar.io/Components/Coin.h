#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

class JUEGO_API Coin : public Tapioca::Component {
public:
    COMPONENT_ID("Coin");

    int points;

    Coin();

    bool initComponent(const CompMap& variables) override;
    void handleEvent(std::string const& id, void* info) override;
};
