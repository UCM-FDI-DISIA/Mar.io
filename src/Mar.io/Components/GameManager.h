#pragma once
#include "Structure/Component.h"
#include "Utilities/Singleton.h"
#include "Structure/ComponentBuilder.h"
#include <string>
#include "gameDefs.h"


namespace Tapioca {
class AudioSourceComponent;
}


class JUEGO_API GameManager : public Tapioca::Component, public Tapioca::Singleton<GameManager> {
private:
    friend Singleton<GameManager>;

    enum State { MainMenu, InGame, GameOver, Pause, Controls };
    enum Sounds {      
        MainMenuMusic,
        InGameMusic,
        WinMenuMusic,
        GameOverMenuMusic,
        Sounds_MAX
    };

    const int N_LEVELS = 2;

    State state;
    State prevState;
    int level;
    int levelScore;
    int prevLevelScore;

 // warning C4251 'GameManager::audios':
 // class 'std::vector<Tapioca::AudioSourceComponent *,std::allocator<Tapioca::AudioSourceComponent *>>' necesita
 // tener una interfaz DLL para que la utilicen los clientes de class 'GameManager'
#ifdef _MSC_VER
#pragma warning(disable : 4251)
#endif
    std ::vector<Tapioca::AudioSourceComponent*> audios;   // Sonidos del juego
#ifdef _MSC_VER
#pragma warning(default : 4251)
#endif

    GameManager();
    void onGameOver();
    void onWin();
    void registerLuaFunctions();
    void deleteCurrentLevel();
    bool addLevel();

public:
    COMPONENT_ID("GameManager");

    GameManager(GameManager&) = delete;
    GameManager(GameManager&&) = delete;
    GameManager& operator=(GameManager&) = delete;
    GameManager& operator=(GameManager&&) = delete;

    bool initComponent(const CompMap& variables) override;
    void start() override;
    void update(const uint64_t deltaTime) override;
    void handleEvent(std::string const& id, void* info) override;

    bool changeScene(std::string const& scene) const;

    void MainMenuButtonClick();
    void ReturnButtonClick();
    void ReplayButtonClick();
    void ContinueButtonClick();
    void ToPause();
    void ControlsReturn();
    void ControlsButtonClick();
    void ExitButtonClick();

    void increaseScore(int increasement);
    inline int getScore() const { return levelScore; }
    std::string getCurrentLevelScene();
    inline int getCurrentLevel() const { return level; }
    inline int getState() const { return state; }
};

class JUEGO_API GameManagerBuilder : public Tapioca::ComponentBuilder {
public:
    GameManagerBuilder() : Tapioca::ComponentBuilder(GameManager::id) { }

    inline Tapioca::Component* createComponent() override { return GameManager::create(); }
};
