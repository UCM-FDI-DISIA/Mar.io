#pragma once
#include <Structure/Component.h>
#include "../gameDefs.h"

namespace MarIo {
class JUEGO_API Chest : public Tapioca::Component {
public:
    COMPONENT_ID("Chest");

    Chest();
    ~Chest();

    bool initComponent(const CompMap& variables) override;
    //void start() override;
    //void update(const uint64_t deltaTime) override;
    void handleEvent(std::string const& id, void* info) override;

private:
    bool open;
    void CreatCoins(int n);
    void CreatOpenChest();
};
}