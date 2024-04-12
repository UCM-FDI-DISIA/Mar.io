#pragma once
#include <Structure/Component.h>
#include "../gameDefs.h"

namespace Tapioca { 
    class GameObject;
};

class JUEGO_API ContactDamage : public Tapioca::Component {
    int damage;
    Tapioca::GameObject* player;

public:
    COMPONENT_ID("ContactDamage")

    /*
    * @brief Constructora de la clase ContactDamage
    */
    ContactDamage();
    /*
    * @brief Destructora de la clase ContactDamage
    */
    ~ContactDamage();

    /*
    * @brief Metodo que se usa para recibir los parametros iniciales y guardarlos.
    * No garantiza que todos los componentes iniciales esten creados
    * @param variables unordered_map con los parametros iniciales
    * @return Devuelve true si se ha inicializado correctamente, false en caso contrario
    */
    bool initComponent(const CompMap& variables) override;
    /*
    * @brief Metodo que se usa para inicializar el componente. Se ejecuta antes que el start
    * Garantiza que todos los componentes iniciales esten creados
    */
    void awake() override;

    void handleEvent(std::string const& id, void* info);
};