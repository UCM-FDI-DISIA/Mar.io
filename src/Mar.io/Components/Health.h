#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

class JUEGO_API Health : public Tapioca::Component {
private:
    int currHealth;
    int maxHealth;

    float gracePeriod;
    uint64_t timer;
    bool invulnerable;

public:
    COMPONENT_ID("Health")

    /*
    * @brief Constructora de la clase Health
    */
    Health();

    /*
    * @brief Metodo que se usa para recibir los parametros iniciales y guardarlos.
    * No garantiza que todos los componentes iniciales esten creados
    * @param variables unordered_map con los parametros iniciales
    * @return Devuelve true si se ha inicializado correctamente, false en caso contrario
    */
    bool initComponent(const CompMap& variables) override;

    void update(const uint64_t deltaTime) override;


    void loseHP(int dmg);
    void healHP(int hp);
    void restoreHealth();
    int getHP();
};
