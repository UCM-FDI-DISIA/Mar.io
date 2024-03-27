#pragma once
#include <Structure/Component.h>
#include "../gameDefs.h"

namespace Tapioca {
class Transform;
}

namespace MarIo {
class JUEGO_API PlayerSetting : public Tapioca::Component {
private:
    Tapioca::Transform* trans;

public:
    COMPONENT_ID("PlayerSetting");

    PlayerSetting();
    ~PlayerSetting();

    bool initComponent(const CompMap& variables) override;
    void start() override;
};
}
