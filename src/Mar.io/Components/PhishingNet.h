#pragma once
#include <Structure/Component.h>
#include "../gameDefs.h"

namespace MarIo {
class JUEGO_API PhishingNet : public Tapioca::Component { 
		public:
    COMPONENT_ID("PhishingNet");
    PhishingNet();
    ~PhishingNet();
    bool initComponent(const CompMap& variables) override;
    void start() override;
		private:
    
};
}