#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

class JUEGO_API PlayerSetting : public Tapioca::Component {

public:
    COMPONENT_ID("PlayerSetting");

    PlayerSetting();
    ~PlayerSetting();
    void start() override;
};
