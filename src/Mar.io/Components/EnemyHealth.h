#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

class JUEGO_API EnemyHealth : public Tapioca::Component {
private:
    int currHealth;        // Vida actual del enemigo
    bool damageReceived;   // Indica si el enemigo ha recibido dano

public:
    COMPONENT_ID("EnemyHealth")

    /*
    * @brief Constructora de la clase EnemyHealth
    */
    EnemyHealth();

    /**
    * @brief Metodo que se usa para recibir los parametros iniciales y guardarlos.
    * No garantiza que todos los componentes iniciales esten creados
    * @param variables unordered_map con los parametros iniciales
    * @return Devuelve true si se ha inicializado correctamente, false en caso contrario
    */
    bool initComponent(const CompMap& variables);

    /**
    * @brief Pierde vida
    * @param dmg Dano recibido
    */
    void loseHP(int dmg);

    /**
    * @brief Devuelve la vida actual del enemigo
    * @return Vida actual del enemigo
    */
    inline int getHP() const { return currHealth; }

    /**
    * @brief Indica si el enemigo puede recibir dano
    */
    inline void canReceiveDamage() { damageReceived = false; }
};
