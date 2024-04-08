#pragma once
#include <Structure/Component.h>
#include "../gameDefs.h"

namespace MarIo {
class JUEGO_API Coin : public Tapioca::Component {
public:
    COMPONENT_ID("Coin");

    Coin();
    ~Coin();

    bool initComponent(const CompMap& variables) override;
    void start() override;
    //void update(const uint64_t deltaTime) override;
    void handleEvent(std::string const& id, void* info) override;
};
}