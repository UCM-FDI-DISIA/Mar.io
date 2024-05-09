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

public:
    COMPONENT_ID("Chest");

    Chest();

    bool initComponent(const CompMap& variables) override;
    void openChest();
};
