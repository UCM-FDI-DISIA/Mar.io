#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

class JUEGO_API Goal : public Tapioca::Component {
public:
    COMPONENT_ID("Goal");

    Goal();
    void handleEvent(std::string const& id, void* info) override;
};
