#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

namespace Tapioca {
class Transform;
class RigidBody;
}

class JUEGO_API MorenaMovement : public Tapioca::Component {
private:
    float movement = 0.3f;          // Cantidad de desplazamiento
    bool updown = true;             // Eje del desplazamiento (true - eje Y / false - eje X)
    int sign = -1;                  // Sentido del desplazamiento (-1 / 1)
    uint64_t time = 0;              // Timer para el movimiento de la morena
    uint64_t timeMovement = 1000;   // Tiempo de movimiento en cada dirección
    Tapioca::Transform* trans;
    Tapioca::RigidBody* rigidBody;

public:
    COMPONENT_ID("MorenaMovement");

    MorenaMovement();
    ~MorenaMovement();

    bool initComponent(const CompMap& variables) override;
    void start() override;
    void update(const uint64_t deltaTime) override;
    void fixedUpdate() override;
    void handleEvent(std::string const& id, void* info) override;
};
