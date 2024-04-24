#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"
#include "Utilities/Vector3.h"

class JUEGO_API CheckPoint : public Tapioca::Component {
private:
    Tapioca::Vector3 spawnPosition;
    bool activated;
    void activate();

public:
    COMPONENT_ID("CheckPoint");

    CheckPoint();

    void handleEvent(std::string const& id, void* info) override;
    bool initComponent(const CompMap& variables) override;
    void start() override;
    Tapioca::Vector3 getRespawnPos();
};
