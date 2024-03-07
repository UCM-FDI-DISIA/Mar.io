#include "MarIo.h"

#include "Structure/FactoryManager.h"
#include "SceneManager.h"
#include "Structure/ComponentBuilder.h"
#include "EjemploComponentFactory.h"

void init(Tapioca::FactoryManager* factMngr, Tapioca::SceneManager* sceneMngr) {
    name();
    addComponentFactories(factMngr);
    sceneMngr->loadScene("MarIo.lua", factMngr);
}

void name() {
#ifdef _DEBUG
    std::cout << "Mar.io\n";
#endif
}

void addComponentFactories(Tapioca::FactoryManager* factMngr) {
#ifdef _DEBUG
    std::cout << "Anadiendo las factorias del juego\n";
#endif
    factMngr->addFactory("EjemploComponent", new MarIo::EjemploComponentFactory());
}
