#pragma once
#include <Structure/Component.h>
#include "../gameDefs.h"

namespace Tapioca {
class Transform;
}

namespace MarIo {
class JUEGO_API PlayerMovementController : public Tapioca::Component {
private:
    Tapioca::Transform* trans;

public:
    COMPONENT_ID("PlayerMovementController");

    PlayerMovementController();
    ~PlayerMovementController();

    bool initComponent(const CompMap& variables) override;
    void start() override;
    void update(const uint64_t deltaTime) override;
    void handleEvent(std::string const& id, void* info) override;
};
}
