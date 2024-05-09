#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"
#include "Utilities/Vector3.h"

namespace Tapioca {
class Transform;
}

/**
* @brief Clase que controla el movimiento lateral de un objeto
*/
class JUEGO_API SideMovement : public Tapioca::Component {
private:
    /**
    * @brief Estados del movimiento
    */
    enum movementState { going, turning, coming, turningBack };
    movementState state;             // Estado actual del movimiento
    const float THRESHOLD = 0.15f;   // Umbral de distancia para cambiar de estado

    float movementDistance;     // Distancia que se va a mover
    float movSpd;               // Velocidad de movimiento
    float rotSpd;               // Velocidad de rotacion
    Tapioca::Vector3 initPos;   // Posicion inicial
    Tapioca::Vector3 nextPos;   // Posicion a la que se va a mover
    Tapioca::Vector3 initDir;   // Direccion inicial
    Tapioca::Vector3 dir;       // Direccion a la que se va a mover
    float rot;                  // Rotacion a la que se va a mover
    float initRot;              // Rotacion inicial

    Tapioca::Transform* transform;   // Componente Transform del objeto

public:
    COMPONENT_ID("SideMovement")

    /**
    * @brief Constructora de la clase SideMovement
    */
    SideMovement();
    /**
    * @brief Destructora de la clase SideMovement
    */
    ~SideMovement();

    /**
    * @brief Metodo que se usa para recibir los parametros iniciales y guardarlos.
    * No garantiza que todos los componentes iniciales esten creados
    * @param variables unordered_map con los parametros iniciales
    * @return Devuelve true si se ha inicializado correctamente, false en caso contrario
    */
    bool initComponent(const CompMap& variables) override;
    /**
    * @brief Metodo que se usa para inicializar el componente. Se ejecuta antes que el start
    * Garantiza que todos los componentes iniciales esten creados
    */
    void awake() override;
    /**
    * @brief Inicializa los valores iniciales
    */
    void start() override;
    /**
    * @brief Actualiza el movimiento lateral
    * @param deltaTime Tiempo trasncurrido desde el ultimo frame
    */
    void update(const uint64_t deltaTime) override;
};