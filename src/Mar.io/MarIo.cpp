#include "MarIo.h"

#include "Structure/FactoryManager.h"
#include "SceneManager.h"
#include "Structure/ComponentBuilder.h"
#include "EjemploComponentFactory.h"

#ifdef _DEBUG
#include <iostream>
#endif

JUEGO_API void init(Tapioca::FactoryManager* factMngr, Tapioca::SceneManager* sceneMngr) {
    name();
	addComponentFactories(factMngr);
	sceneMngr->loadScene("MarIo.lua");
}

JUEGO_API void name() { std::cout << "Mar.io\n"; }

JUEGO_API void addComponentFactories(Tapioca::FactoryManager* factMngr) {
#ifdef _DEBUG
	std::cout << "Anadiendo las factorias del juego\n";
#endif
    factMngr->addFactory("EjemploComponent", new MarIo::EjemploComponentFactory());
}