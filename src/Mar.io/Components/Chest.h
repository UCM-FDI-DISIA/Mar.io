#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

namespace Tapioca {
class Transform;
class MeshRenderer;
class GameObject;
}

/**
* @brief Representa un cofre
*/
class JUEGO_API Chest : public Tapioca::Component {
private:
    bool open;    // Indica si el cofre esta abierto
    int nCoins;   // Numero de monedas que contiene el cofre

    /**
    * @brief Crea monedas en el cofre
    * @param n Numero de monedas a crear
    */
    void createCoins(int n);

public:
    COMPONENT_ID("Chest");

    /**
    * @brief Constructora de la clase Chest
    */
    Chest();

    /**
    * @brief Metodo que se usa para recibir los parametros iniciales y guardarlos.
    * No garantiza que todos los componentes iniciales esten creados
    * @param variables unordered_map con los parametros iniciales
    * @return Devuelve true si se ha inicializado correctamente, false en caso contrario
    */
    bool initComponent(const CompMap& variables) override;
    /**
    * @brief Crea monedas y cambia el mesh del cofre
    */
    void openChest();
};
