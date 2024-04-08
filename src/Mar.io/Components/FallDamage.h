#pragma once
#include <Structure/Component.h>
#include "../gameDefs.h"

namespace Tapioca {
class Transform;
}

class Health;

namespace MarIo {
class JUEGO_API FallDamage : public Tapioca::Component {
private:
    Health* health;
    Tapioca::Transform* trans;

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
