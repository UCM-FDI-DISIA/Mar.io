#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"
#include "Utilities/Vector3.h"

namespace Tapioca {
class Transform;
}

class JUEGO_API CheckPoint : public Tapioca::Component {
private:
    Tapioca::Vector3 globalPos;
    Tapioca::Vector3 offset;
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
