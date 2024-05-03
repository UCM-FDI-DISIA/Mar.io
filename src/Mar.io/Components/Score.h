#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

namespace Tapioca {
class Text;
}
class Health;

class JUEGO_API Score : public Tapioca::Component {
private:
    Health* health;
    Tapioca::Text* coinsText;

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