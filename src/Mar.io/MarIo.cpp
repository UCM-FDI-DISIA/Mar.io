#include "MarIo.h"

#include "Structure/FactoryManager.h"
#include "Structure/ComponentBuilder.h"
#include "EjemploComponentFactory.h"

#ifdef _DEBUG
#include <iostream>
#endif

JUEGO_API void init(Tapioca::FactoryManager* manager) {
    name();
	addComponentFactories(manager);
}

JUEGO_API void name() { std::cout << "Mar.io\n"; }

JUEGO_API void addComponentFactories(Tapioca::FactoryManager* manager) {
#ifdef _DEBUG
	std::cout << "Anadiendo las factorias del juego\n";
#endif
	manager->addFactory("EjemploComponent", new MarIo::EjemploComponentFactory());
}