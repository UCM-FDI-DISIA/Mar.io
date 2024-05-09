#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"
#include "Utilities/Vector3.h"

class JUEGO_API FeetDamage : public Tapioca::Component {
private:
    int damage;

public:
    COMPONENT_ID("FeetDamage");

    FeetDamage();

    bool initComponent(const CompMap& variables) override;
    void handleEvent(std::string const& id, void* info) override;
};
