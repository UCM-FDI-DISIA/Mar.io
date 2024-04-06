#pragma once
#include "Structure/Component.h"
#include "Utilities/Singleton.h"
#include "Structure/ComponentBuilder.h"
#include "../gameDefs.h"
#include <string>

namespace MarIo {
class JUEGO_API GameManager : public Tapioca::Component, public Tapioca::Singleton<GameManager> {
private:
    friend Singleton<GameManager>;

    enum State { MainMenu, InGame, GameOver, Pause };

    State state;

    GameManager();

    void onGameOver();
    void onWin();

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

};

class JUEGO_API GameManagerBuilder : public Tapioca::ComponentBuilder {
public:
    GameManagerBuilder() : Tapioca::ComponentBuilder(GameManager::id) { }

    inline Tapioca::Component* createComponent() override { return GameManager::create(); }
};
}