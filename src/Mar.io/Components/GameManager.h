#pragma once
#include "Structure/Component.h"
#include "Utilities/Singleton.h"
#include "Structure/ComponentBuilder.h"
#include <string>
#include "gameDefs.h"

namespace Tapioca {
class AudioSourceComponent;
}

class SoundManager;

/**
* @brief Clase que gestiona el juego
*/
class JUEGO_API GameManager : public Tapioca::Component, public Tapioca::Singleton<GameManager> {
private:
    friend Singleton<GameManager>;

    enum State { MainMenu, InGame, GameOver, Pause, Controls };

    const int N_LEVELS = 2;   // Numero de niveles

    State state;          // Estado del juego
    State prevState;      // Estado anterior del juego
    int level;            // Nivel actual
    int levelScore;       // Puntuacion del nivel actual
    int prevLevelScore;   // Puntuacion del nivel anterior

    SoundManager* sManager;   // Puntero al SoundManager

    /**
    * @brief Constructora de la clase GameManager
    */
    GameManager();

    /**
    * @brief Cambio de escena a GameOver
    */
    void onGameOver();
    /**
    * @brief Cambio de escena a WinMenu
    */
    void onWin();
    /**
    * @brief Registro de funciones de Lua
    */
    void registerLuaFunctions();
    /**
    * @brief Elimina el nivel actual
    */
    void deleteCurrentLevel();
    /**
    * @brief Pasa al siguiente nivel
    */
    bool addLevel();

public:
    COMPONENT_ID("GameManager");

    GameManager(GameManager&) = delete;
    GameManager(GameManager&&) = delete;
    GameManager& operator=(GameManager&) = delete;
    GameManager& operator=(GameManager&&) = delete;

    /*
    * @brief Metodo que se usa para recibir los parametros iniciales y guardarlos.
    * No garantiza que todos los componentes iniciales esten creados
    * @param variables unordered_map con los parametros iniciales
    * @return Devuelve true si se ha inicializado correctamente, false en caso contrario
    */
    bool initComponent(const CompMap& variables) override;
    /**
    * @brief Inicializa las referencias a los componentes necesarios y cambia de escena a MainMenu
    */
    void start() override;
    /**
    * @brief Maneja los eventos del juego
    * @param id Id del evento
    * @param info Informacion del evento
    */
    void handleEvent(std::string const& id, void* info) override;

    /**
    * @brief Cambia de escena
    * @param scene Escena a la que se quiere cambiar
    */
    bool changeScene(std::string const& scene) const;

    /**
    * @brief Maneja el evento de pulsar el boton de MainMenu
    */
    void MainMenuButtonClick();
    /**
    * @brief Maneja el evento de pulsar el boton de Return
    */
    void ReturnButtonClick();
    /**
    * @brief Maneja el evento de pulsar el boton de Replay
    */
    void ReplayButtonClick();
    /**
    * @brief Maneja el evento de pulsar el boton de Continue
    */
    void ContinueButtonClick();
    /**
    * @brief Maneja el evento de pulsar el boton de Pause
    */
    void ToPause();
    /**
    * @brief Maneja el evento de pulsar el boton de Return desde el menu de controles
    */
    void ControlsReturn();
    /**
    * @brief Maneja el evento de pulsar el boton de Return desde el menu de controles
    */
    void ControlsButtonClick();
    /**
    * @brief Maneja el evento de pulsar el boton de Exit
    */
    void ExitButtonClick();

    /**
    * @brief Aumenta la puntuacion
    * @param increasement Cantidad de puntos a aumentar
    */
    void increaseScore(int increasement);
    /**
    * @brief Devuelve la puntuacion
    * @return Puntuacion actual
    */
    inline int getScore() const { return levelScore; }
    /**
    * @brief Devuelve el nombre de la escena actual
    * @return Nombre de la escena actual
    */
    std::string getCurrentLevelScene();
    /**
    * @brief Devuelve el nivel actual
    * @return Nivel actual
    */
    inline int getCurrentLevel() const { return level; }
    /**
    * @brief Devuelve el estado actual del juego
    * @return Estado actual del juego
    */
    inline int getState() const { return state; }
    /**
    * @brief Devuelve el estado anterior del juego
    * @return Estado anterior del juego
    */
    inline int getPrevState() const { return prevState; }
};

/**
* @brief Builder de GameManager
*/
class JUEGO_API GameManagerBuilder : public Tapioca::ComponentBuilder {
public:
    GameManagerBuilder() : Tapioca::ComponentBuilder(GameManager::id) { }

    inline Tapioca::Component* createComponent() override { return GameManager::create(); }
};
