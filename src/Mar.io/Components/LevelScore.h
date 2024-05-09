#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

/**
* @brief Representa la puntuacion del nivel
*/
class JUEGO_API LevelScore : public Tapioca::Component {
public:
    COMPONENT_ID("LevelScore");

    /**
    * @brief Constructora de la clase LevelScore
    */
    LevelScore() { }

    /**
    * @brief Establece el valor de la puntuacion al texto
    */
    void start() override;
};
