#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

/**
* @brief Representa la configuracion del jugador
*/
class JUEGO_API PlayerSetting : public Tapioca::Component {

public:
    COMPONENT_ID("PlayerSetting");

    /**
    * @brief Constructora de la clase PlayerSetting
    */
    PlayerSetting();
    /**
    * @brief Destructor de la clase PlayerSetting
    */
    ~PlayerSetting();

    /**
    * @brief Coge el RigidBody del jugador y le da una velocidad inicial y gravedad
    */
    void start() override;
};
