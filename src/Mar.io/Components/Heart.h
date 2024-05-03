#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

class JUEGO_API Heart : public Tapioca::Component {
public:
    COMPONENT_ID("Heart");

    int points;

    Heart();

    bool initComponent(const CompMap& variables) override;
    void start() override;
    void handleEvent(std::string const& id, void* info) override;
};