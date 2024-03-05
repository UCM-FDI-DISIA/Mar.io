#include "EjemploComponentFactory.h"
#include "EjemploComponent.h"

namespace MarIo {
Tapioca::Component* EjemploComponentFactory::createComponent() { return new EjemploComponent(); }
}
