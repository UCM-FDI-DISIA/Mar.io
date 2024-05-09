#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

/**
* @brief Representa un objetivo
*/
class JUEGO_API Goal : public Tapioca::Component {
public:
    COMPONENT_ID("Goal");

    /**
    * @brief Constructora de la clase Goal
    */
    Goal();

    /**
    * @brief Controla que si es el jugador y ha llegado al objetivo, se ha ganado el nivel
    * @param id Id del evento
    * @param info Informacion del evento
    */
    void handleEvent(std::string const& id, void* info) override;
};
