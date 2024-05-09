#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"
#include "Utilities/Vector3.h"

class PlayerMovementController;

/**
* @brief Componente que controla el salto del jugador
*/
class JUEGO_API Jump : public Tapioca::Component {
private:
    PlayerMovementController* playerMovementController;   // Componente de movimiento del jugador
    int damage;                                           // Dano
    int jumpsNumber;                                      // Numero de saltos
    bool grounded;                                        // Indica si esta en el suelo
    int jumps;                                            // Numero de saltos realizados
    bool jump;                                            // Indica si esta saltando
    float jumpSpeed;                                      // Velocidad de salto
    float bounceSpeed;                                    // Velocidad de rebote
    bool bounce;                                          // Indica si esta rebotando

public:
    COMPONENT_ID("Jump");

    /**
    * @brief Constructora de la clase Jump
    */
    Jump();

    void start() override;

    bool initComponent(const CompMap& variables) override;

    void update(const uint64_t deltaTime) override;

    void handleEvent(std::string const& id, void* info) override;

    void reset();

    /**
    * @brief Indica si el jugador esta en el suelo
    * @return Devuelve true si esta en el suelo, false en caso contrario
    */
    inline bool isGrounded() const { return grounded; }

    /**
    * @brief Indica si el jugador esta saltando
    * @return Devuelve true si esta saltando, false en caso contrario
    */
    inline bool isJumping() const { return jump; }

    /**
    * @brief Devuelve la velocidad de salto
    * @return La velocidad de salto
    */
    inline float getJumpSpeed() const { return jumpSpeed; }

    /**
    * @brief Devuelve si esta rebotando
    * @return true si esta rebotando, false en caso contrario
    */
    inline bool isBouncing() const { return bounce; }

    /**
    * @brief Devuelve la velocidad de rebote
    * @return La velocidad de rebote
    */
    inline float getBounceSpeed() const { return bounceSpeed; }

    /**
    * @brief Establece si puede saltar
    * @param enable true si puede saltar, false en caso contrario
    */
    inline void setJump(bool enable) { jump = enable; }

    /**
    * @brief Establece si puede rebotar
    * @param enable true si puede rebotar, false en caso contrario
    */
    inline void setBounce(bool enable) { bounce = enable; }
};
