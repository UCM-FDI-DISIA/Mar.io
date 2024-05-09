#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

namespace Tapioca {
class Animator;
}

class JUEGO_API Fist : public Tapioca::Component {
private:
    Tapioca::Animator* parentAnim;   // Animator del padre
    float coolDown;                  // Tiempo de espera entre ataques
    float duration;                  // Duracion del ataque
    float cont;                      // Contador de tiempo
    bool canHit;                     // Indica si puede golpear
    bool onAttack;                   // Indica si esta atacando
    int damage;                      // Dano del ataque

public:
    COMPONENT_ID("Fist");

    /**
    * @brief Constructora de la clase Fist
    */
    Fist();

    /**
    * @brief Asigna las referencias de los componentes necesarios
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
    * @brief Controla el ataque segun el tiempo de cooldown y duracion
    * @param deltaTime Tiempo trasncurrido desde el ultimo frame
    */
    void update(const uint64_t deltaTime) override;
    /**
    * @brief Maneja los eventos de colision
    * @param id Id del evento
    * @param info Informacion del evento
    */
    void handleEvent(std::string const& id, void* info) override;
};
