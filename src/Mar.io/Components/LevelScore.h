#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

class JUEGO_API LevelScore : public Tapioca::Component {
public:
    COMPONENT_ID("LevelScore");
    LevelScore();
    void start() override;
};
