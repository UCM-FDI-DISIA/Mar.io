#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

namespace Tapioca {
class Text;
}

class Health;

/**
* @brief Representa la puntuacion del jugador
*/
class JUEGO_API Score : public Tapioca::Component {
private:
    Health* health;             // Puntero a la vida del jugador
    Tapioca::Text* coinsText;   // Texto de las monedas

    int score;             // Puntuacion
    int numScorePerLife;   // Puntuacion necesaria para ganar una vida
    int heal;              // Vida recuperada

public:
    COMPONENT_ID("Score")

    /**
    * @brief Constructora de la clase Score
    */
    Score();

    /**
    * @brief Metodo que se usa para recibir los parametros iniciales y guardarlos.
    * No garantiza que todos los componentes iniciales esten creados
    * @param variables unordered_map con los parametros iniciales
    * @return Devuelve true si se ha inicializado correctamente, false en caso contrario
    */
    bool initComponent(const CompMap& variables) override;
    /**
    * @brief Asigna las referencia de los componentes necesarios
    */
    void start() override;

    /**
    * @brief Incrementa la puntuacion
    * @param increasement Puntuacion a incrementar
    */
    void increaseScore(int increasement);
};