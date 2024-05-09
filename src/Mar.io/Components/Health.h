#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

namespace Tapioca {
class Text;
class ParticleSystemComponent;
}

/**
* @brief Representa la vida del jugador
*/
class JUEGO_API Health : public Tapioca::Component {
private:
    int currHealth;   // Vida actual del jugador

    int64_t timer;       // Contador para la invencibilidad
    bool invulnerable;   // Indica si el jugador es invulnerable

    Tapioca::Text* livesText;                    // Texto de las vidas
    Tapioca::ParticleSystemComponent* pSystem;   // Sistema de particulas

public:
    COMPONENT_ID("Health")

    /**
    * @brief Constructora de la clase Health
    */
    Health();

    void start() override;

    /**
    * @brief Metodo que se usa para recibir los parametros iniciales y guardarlos.
    * No garantiza que todos los componentes iniciales esten creados
    * @param variables unordered_map con los parametros iniciales
    * @return Devuelve true si se ha inicializado correctamente, false en caso contrario
    */
    bool initComponent(const CompMap& variables) override;
    /**
    * @brief Si no es invulnerable, controla la vida del jugador
    * @param deltaTime Tiempo trasncurrido desde el ultimo frame
    */
    void update(const uint64_t deltaTime) override;

    /**
    * @brief Pierde vida
    * @param dmg Dano recibido
    */
    void loseHP(int dmg);
    /**
    * @brief Recupera vida
    * @param hp Vida recuperada
    */
    void healHP(int hp);
    /**
    * @brief Devuelve la vida actual del jugador
    * @return Vida actual del jugador
    */
    inline int getHP() const { return currHealth; }

    /**
    * @brief Establece la duracion de invencibilidad del jugador
    * @param duration Duracion de la invencibilidad
    */
    void setInvencibility(float duration);
    /**
    * @brief Desactiva la invencibilidad del jugador
    */
    void deactivateInvincibility();
};
