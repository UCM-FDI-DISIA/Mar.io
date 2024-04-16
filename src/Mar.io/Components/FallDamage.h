#pragma once
#include <Structure/Component.h>
#include "../gameDefs.h"
#include "Utilities/Vector3.h"

namespace Tapioca {
class Transform;
}

class Health;

namespace MarIo {
class JUEGO_API FallDamage : public Tapioca::Component {
private:
    Health* health;
    Tapioca::Transform* trans;
    Tapioca::Vector3 initPos;

public:
    COMPONENT_ID("FallDamage");

    FallDamage();
    ~FallDamage();

    bool initComponent(const CompMap& variables) override;
    void start() override;
    void update(const uint64_t deltaTime) override;
    void fixedUpdate() override;
    void handleEvent(std::string const& id, void* info) override;
};
}
