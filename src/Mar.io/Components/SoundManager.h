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

    enum Sounds {
        Walk,
        Jump,
        Hurt,
        Fist,
        MainMenuMusic,
        InGameMusic,
        WinMenuMusic,
        GameOverMenuMusic,
        Sounds_MAX
    };

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

    SoundManager();

public:
    COMPONENT_ID("SoundManager");

    SoundManager(SoundManager&) = delete;
    SoundManager(SoundManager&&) = delete;
    SoundManager& operator=(SoundManager&) = delete;
    SoundManager& operator=(SoundManager&&) = delete;

    bool initComponent(const CompMap& variables) override;
    void start() override;
    void update(const uint64_t deltaTime) override;
    void handleEvent(std::string const& id, void* info) override;

    void onGameOver();
    void onWin(int const& level, int const&  n_level);

    void MainMenuButtonClick();
    void ReturnButtonClick();
    void ReplayButtonClick();
    void ContinueButtonClick();
    void ToPause();
    void ControlsReturn(int prevState);
    void ControlsButtonClick();
};

class JUEGO_API SoundManagerBuilder : public Tapioca::ComponentBuilder {
public:
    SoundManagerBuilder() : Tapioca::ComponentBuilder(SoundManager::id) { }

    inline Tapioca::Component* createComponent() override { return SoundManager::create(); }
};
