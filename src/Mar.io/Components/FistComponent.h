#pragma once
#include <Structure/Component.h>
#include "../gameDefs.h"

namespace MarIo {
class JUEGO_API FistComponent : public Tapioca::Component {
private:
    float coolDown;
    float duration;
    float cont;
    bool canHit;
    bool onAttack;

public:
    COMPONENT_ID("FistComponent");

    FistComponent();
    ~FistComponent();

    bool initComponent(const CompMap& variables) override;
    void update(const uint64_t deltaTime) override;
    void handleEvent(std::string const& id, void* info) override;

    bool isAttack();


};
}