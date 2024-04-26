#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"
#include "Utilities/Vector3.h"

namespace Tapioca {
class RigidBody;
class Transform;
}

class JUEGO_API PhishingNet : public Tapioca::Component {
private:
    float speed;
    Tapioca::Vector3 velocity;
    Tapioca::RigidBody* rigidBody;
    Tapioca::Transform* transform;

public:
    COMPONENT_ID("PhishingNet");

    PhishingNet();

    ~PhishingNet();

    bool initComponent(const CompMap& variables) override;
    void handleEvent(std::string const& id, void* info) override;
    void start() override;
    void update(const uint64_t deltaTime) override;
};
