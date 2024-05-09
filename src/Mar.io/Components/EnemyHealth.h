#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

class JUEGO_API EnemyHealth : public Tapioca::Component {
private:
    int currHealth;
    bool damageReceived;

public:
    COMPONENT_ID("EnemyHealth")

    /*
    * @brief Constructora de la clase EnemyHealth
    */
    EnemyHealth();

    /*
    * @brief Metodo que se usa para recibir los parametros iniciales y guardarlos.
    * No garantiza que todos los componentes iniciales esten creados
    * @param variables unordered_map con los parametros iniciales
    * @return Devuelve true si se ha inicializado correctamente, false en caso contrario
    */
    bool initComponent(const CompMap& variables);

    void loseHP(int dmg);
    inline int getHP() const { return currHealth; }

    inline void canReceiveDamage() { damageReceived = false; }
};
