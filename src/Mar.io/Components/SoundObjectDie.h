#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

class JUEGO_API SoundObjectDie : public Tapioca::Component {
private:
    bool is3D;
    bool isLooping;
    bool paused;
    bool play;
    bool playingS;
    std::string routeS;

    float timer = 0;

public:
    COMPONENT_ID("SoundObjectDie");

    SoundObjectDie();

    bool initComponent(const CompMap& variables) override;
    void update(const uint64_t deltaTime) override;

    void createSound();
};
