#pragma once
#include "Structure/ComponentBuilder.h"
#include "Structure/Component.h"

namespace MarIo {
class EjemploComponentFactory : public Tapioca::ComponentBuilder {
public:
    Tapioca::Component* createComponent() override;
};
}