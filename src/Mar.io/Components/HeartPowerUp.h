#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

/**
* @brief Representa un power up de corazon
*/
class JUEGO_API HeartPowerUp : public Tapioca::Component {
public:
    COMPONENT_ID("HeartPowerUp");

    int points;   // Puntos que da el power up

    /**
    * @brief Constructora de la clase HeartPowerUp
    */
    HeartPowerUp();

    /**
    * @brief Metodo que se usa para recibir los parametros iniciales y guardarlos.
    * No garantiza que todos los componentes iniciales esten creados
    * @param variables unordered_map con los parametros iniciales
    * @return Devuelve true si se ha inicializado correctamente, false en caso contrario
    */
    bool initComponent(const CompMap& variables) override;
    /**
    * @brief Inicializa la referencia al rigidbody
    */
    void start() override;
    /**
    * @brief Maneja el evento de colision con el jugador y le da vida
    * @param id Id del evento
    * @param info Informacion del evento
    */
    void handleEvent(std::string const& id, void* info) override;
};