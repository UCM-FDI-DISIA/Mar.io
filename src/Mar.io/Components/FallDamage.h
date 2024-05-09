#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"
#include "Utilities/Vector3.h"

namespace Tapioca {
class Transform;
class RigidBody;
}

class Health;
class PlayerMovementController;

class JUEGO_API FallDamage : public Tapioca::Component {
private:
    Health* health;              // Componente de vida del jugador
    Tapioca::Transform* trans;   // Transform del jugador
    float limitFall;             // Limite de caida
    float fallOffset;            // Offset de caida
    int damage;                  // Dano

public:
    COMPONENT_ID("FallDamage");

    /**
    * @brief Constructora de la clase FallDamage
    */
    FallDamage();
    /**
    * @brief Destructora de la clase FallDamage
    */
    ~FallDamage();

    /**
    * @brief Asigna las referencia de los componentes necesarios
    */
    void start() override;
    /**
    * @brief Metodo que se usa para recibir los parametros iniciales y guardarlos.
    * No garantiza que todos los componentes iniciales esten creados
    * @param variables unordered_map con los parametros iniciales
    * @return Devuelve true si se ha inicializado correctamente, false en caso contrario
    */
    bool initComponent(const CompMap& variables) override;
    /**
    * @brief Desactiva si tiene invencibilidad y aplica dano
    * @param deltaTime Tiempo trasncurrido desde el ultimo frame
    */
    void update(const uint64_t deltaTime) override;
};
