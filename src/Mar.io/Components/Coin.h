#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

/**
* @brief Representa una moneda
*/
class JUEGO_API Coin : public Tapioca::Component {
public:
    COMPONENT_ID("Coin");

    int points;  // Puntos que da la moneda

    /**
    * @brief Constructora de la clase Coin
    */
    Coin();

    /**
    * @brief Metodo que se usa para recibir los parametros iniciales y guardarlos.
    * No garantiza que todos los componentes iniciales esten creados
    * @param variables unordered_map con los parametros iniciales
    * @return Devuelve true si se ha inicializado correctamente, false en caso contrario
    */
    bool initComponent(const CompMap& variables) override;
    /**
    * 
    */
    void handleEvent(std::string const& id, void* info) override;
};
