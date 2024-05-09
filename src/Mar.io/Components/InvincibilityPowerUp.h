#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

/**
* @brief Representa un power up de invencibilidad
*/
class JUEGO_API InvincibilityPowerUp : public Tapioca::Component {
public:
    COMPONENT_ID("InvincibilityPowerUp");

    float time;   // Tiempo de duracion de la invencibilidad

    /**
    * @brief Constructora de la clase InvincibilityPowerUp
    */
    InvincibilityPowerUp();
    /**
    * @brief Metodo que se usa para recibir los parametros iniciales y guardarlos.
    * No garantiza que todos los componentes iniciales esten creados
    * @param variables unordered_map con los parametros iniciales
    * @return Devuelve true si se ha inicializado correctamente, false en caso contrario
    */
    bool initComponent(const CompMap& variables) override;
    /**
    * @brief Inicializa la referencia del componente Rigidbody
    */
    void start() override;
    /**
    * @brief Controla el evento "onCollisionEnter" y activa la invencibilidad
    * @param id Id del evento
    * @param info Informacion del evento
    */
    void handleEvent(std::string const& id, void* info) override;
};