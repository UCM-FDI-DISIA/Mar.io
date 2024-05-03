#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

class Health;

class JUEGO_API Score : public Tapioca::Component {
private:
    Health* health;

    int score;
    int numScorePerLife;
    int heal;

public:
    COMPONENT_ID("Score")

    Score();

    bool initComponent(const CompMap& variables) override;

    void start() override;

    void increaseScore(int increasement);
};