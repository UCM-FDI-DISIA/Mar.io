#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

namespace Tapioca {
class Transform;
class MeshRenderer;
class GameObject;
}

class JUEGO_API Chest : public Tapioca::Component {
private:
    //const std::uint64_t COINS_LIFE = 5000;

    //std::vector<Tapioca::GameObject*> coins;
    bool open;
    int nCoins;
    //uint64_t elapsedTime;

    void createCoins(int n);
    void creatOpenChest();

public:
    COMPONENT_ID("Chest");

    Chest();

    bool initComponent(const CompMap& variables) override;
    void handleEvent(std::string const& id, void* info) override;
};
