#pragma once
#include <Structure/Component.h>
#include "../gameDefs.h"
#include "Utilities/Vector3.h"
namespace MarIo {
class JUEGO_API CheckPoint : public Tapioca::Component { 
public:
    COMPONENT_ID("CheckPoint");
    CheckPoint();
    ~CheckPoint();
    void handleEvent(std::string const& id, void* info) override;
    bool initComponent(const CompMap& variables) override;
    void start() override;
    Tapioca::Vector3 getRespawnPos();

private:
    Tapioca::Vector3 spawnPosition;
    bool activated;
    void activate();
    
};
}