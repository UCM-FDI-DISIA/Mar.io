#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

class JUEGO_API Chest : public Tapioca::Component {
private:
    bool open;
    void CreatCoins(int n);
    void CreatOpenChest();

public:
    COMPONENT_ID("Chest");

    Chest();

    bool initComponent(const CompMap& variables) override;
    void handleEvent(std::string const& id, void* info) override;
};
