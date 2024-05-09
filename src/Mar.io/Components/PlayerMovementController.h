#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"
#include "Utilities/Vector3.h"

namespace Tapioca {
class Transform;
class RigidBody;
class Animator;
class AudioSourceComponent;
}

class Health;
class GameManager;
class Jump;

/**
* @brief Clase que controla el movimiento del jugador
*/
class JUEGO_API PlayerMovementController : public Tapioca::Component {
private:
    Jump* jump;                      // Componente de salto
    bool run;                        // Indica si esta corriendo
    bool runEnd;                     // Indica si ha terminado de correr
    bool walk;                       // Indica si esta caminando
    Tapioca::Transform* trans;       // Transform del jugador
    Tapioca::RigidBody* rigidBody;   // RigidBody del jugador
    Tapioca::Animator* anim;         // Animator del jugador
    Health* health;                  // Componente de vida del jugador
    int moveX, moveZ;                // Movimiento en X y Z
    float speed;                     // Velocidad
    float runSpeed;                  // Velocidad de carrera
    float walkSpeed;                 // Velocidad de caminar
    Tapioca::Vector3 respawnpos;     // Posicion de respawn
    Tapioca::Vector3 initialPos;     // Posicion inicial

public:
    COMPONENT_ID("PlayerMovementController");

    /**
    * @brief Constructora de la clase PlayerMovementController
    */
    PlayerMovementController();

    /**
    * @brief Destructora de la clase PlayerMovementController
    */
    ~PlayerMovementController();

    /**
    * @brief Metodo que se usa para recibir los parametros iniciales y guardarlos.
    * No garantiza que todos los componentes iniciales esten creados
    * @param variables unordered_map con los parametros iniciales
    * @return Devuelve true si se ha inicializado correctamente, false en caso contrario
    */
    bool initComponent(const CompMap& variables) override;
    /**
    * @brief Asigna las referencia de los componentes necesarios
    */
    void start() override;
    /**
    * @brief Controla el movimiento del jugador
    * @param deltaTime Tiempo trasncurrido desde el ultimo frame
    */
    void update(const uint64_t deltaTime) override;
    /**
    * @brief Controla el movimiento del jugador en cuanto a fisicas
    */
    void fixedUpdate() override;
    /**
    * @brief Maneja el movimiento del jugador
    * @param id Id del evento
    * @param info Informacion del evento
    */
    void handleEvent(std::string const& id, void* info) override;
    /**
    * @brief Resetea el estado del jugador
    */
    void reset();

    /**
    * @brief Establece si el jugador esta corriendo
    * @param enable Indica si esta corriendo
    */
    inline void setWalk(bool enable) { walk = enable; }
};
