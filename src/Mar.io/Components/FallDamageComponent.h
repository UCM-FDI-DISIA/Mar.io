#pragma once
#include <Structure/Component.h>
#include "../gameDefs.h"

namespace Tapioca {
class Transform;
}

class HealthComponent;

namespace MarIo {
class JUEGO_API FallDamageComponent : public Tapioca::Component {
private:
    HealthComponent* health;
    Tapioca::Transform* trans;

public:
    COMPONENT_ID("FallDamageComponent");

    FallDamageComponent();
    ~FallDamageComponent();

    bool initComponent(const CompMap& variables) override;
    void start() override;
    void update(const uint64_t deltaTime) override;
    void fixedUpdate() override;
    void handleEvent(std::string const& id, void* info) override;
};
}
