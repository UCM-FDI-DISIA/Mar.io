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
    enum Sounds { Coin, Walk, Sounds_MAX };

    State state;
    State prevState;
    int level;
    int levelScore;
    std ::vector<Tapioca::AudioSourceComponent*> audios;   // Sonidos del juego


    GameManager();
    void onGameOver();
    void onWin();
    void registerLuaFunctions();

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
    inline int getScore() { return levelScore; }
};

class JUEGO_API GameManagerBuilder : public Tapioca::ComponentBuilder {
public:
    GameManagerBuilder() : Tapioca::ComponentBuilder(GameManager::id) { }

    inline Tapioca::Component* createComponent() override { return GameManager::create(); }
};
