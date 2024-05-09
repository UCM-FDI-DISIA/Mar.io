#pragma once
#include "Structure/Component.h"
#include "Utilities/Singleton.h"
#include "Structure/ComponentBuilder.h"
#include <string>
#include "gameDefs.h"


namespace Tapioca {
class AudioSourceComponent;
}

class JUEGO_API SoundManager : public Tapioca::Component, public Tapioca::Singleton<SoundManager> {
private:
    friend Singleton<SoundManager>;

    enum State { MainMenu, InGame, GameOver, Pause, Controls };

    enum Sounds { Walk, Jump, Hurt, Fist, MainMenuMusic, InGameMusic, WinMenuMusic, GameOverMenuMusic, Sounds_MAX };

    // warning C4251 'SoundManager::audios':
    // class 'std::vector<Tapioca::AudioSourceComponent *,std::allocator<Tapioca::AudioSourceComponent *>>' necesita
    // tener una interfaz DLL para que la utilicen los clientes de class 'SoundManager'
#ifdef _MSC_VER
#pragma warning(disable : 4251)
#endif
    std ::vector<Tapioca::AudioSourceComponent*> audios;   // Sonidos del juego
#ifdef _MSC_VER
#pragma warning(default : 4251)
#endif

    /**
    * @brief Constructora de la clase SoundManager
    */
    SoundManager() { }

public:
    COMPONENT_ID("SoundManager");

    SoundManager(SoundManager&) = delete;
    SoundManager(SoundManager&&) = delete;
    SoundManager& operator=(SoundManager&) = delete;
    SoundManager& operator=(SoundManager&&) = delete;

    /**
    * @brief Crea los sonidos del juego
    */
    void start() override;
    /**
    * @brief Reproduce los sonidos del juego
    * @param id Id del evento
    * @param info Informacion del evento
    */
    void handleEvent(std::string const& id, void* info) override;

    /**
    * @brief Reproduce el sonido del menu de GameOver
    */
    void onGameOver();
    /**
    * @brief Reproduce el sonido del menu de Win
    * @param level Nivel actual
    * @param n_level Numero de niveles
    */
    void onWin(int const& level, int const& n_level);

    /**
    * @brief Reproduce el sonido del menu de MainMenu
    */
    void MainMenuButtonClick();
    /**
    * @brief Reproduce el sonido del menu de MainMenu
    */
    void ReturnButtonClick();
    /**
    * @brief Reproduce el sonido del menu de juego
    */
    void ReplayButtonClick();
    /**
    * @brief Para el sonido del menu de juego
    */
    void ContinueButtonClick();
    /**
    * @brief Para el sonido del menu de juego
    */
    void ToPause();
    /**
    * @brief Para el sonido del menu de juego
    * @param prevState Estado anterior
    */
    void ControlsReturn(int prevState);
    /**
    * @brief Para el sonido del menu de juego
    */
    void ControlsButtonClick();
};

/**
* @brief Builder de SoundManager
*/
class JUEGO_API SoundManagerBuilder : public Tapioca::ComponentBuilder {
public:
    SoundManagerBuilder() : Tapioca::ComponentBuilder(SoundManager::id) { }

    inline Tapioca::Component* createComponent() override { return SoundManager::create(); }
};
