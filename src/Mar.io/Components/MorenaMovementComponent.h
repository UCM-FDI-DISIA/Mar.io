#pragma once
#include <Structure/Component.h>
#include "../gameDefs.h"

namespace Tapioca {
class Transform;
class RigidBody;
}

namespace MarIo {
class JUEGO_API MorenaMovementComponent : public Tapioca::Component { 
private:
    bool updown; // Eje del desplazamiento (true - eje Y / false - eje X)
    int sign = -1; // Sentido del desplazamiento (-1 / 1)
    uint64_t time = 0;   // Timer para el movimiento de la morena
    uint64_t timeMovement = 5;   // Tiempo de movimiento en cada dirección
    Tapioca::Transform* trans;

public:
    COMPONENT_ID("MorenaMovementComponent");

    MorenaMovementComponent();
    ~MorenaMovementComponent();

    bool initComponent(const CompMap& variables) override;
    void start() override;
    void update(const uint64_t deltaTime) override;
    void handleEvent(std::string const& id, void* info) override;
};
}
