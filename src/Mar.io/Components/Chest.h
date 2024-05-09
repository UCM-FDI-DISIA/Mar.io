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
    bool open;
    int nCoins;

    void createCoins(int n);
    void creatOpenChest();

public:
    COMPONENT_ID("Chest");

    Chest();

    void handleEvent(std::string const& id, void* info) override;
};
