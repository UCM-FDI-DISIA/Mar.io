#include "MarIo.h"

#include "Structure/FactoryManager.h"
#include "SceneManager.h"
#include "Structure/ComponentBuilder.h"
#include "EjemploComponentFactory.h"
#include <Structure/BasicBuilder.h>
#include "Components/PlayerMovementController.h"

void init() {
    name();
    addComponentFactories();
    Tapioca::SceneManager::instance()->loadScene("MarIo.lua");
}

void name() {
#ifdef _DEBUG
    std::cout << "Mar.io\n";
#endif
}

void addComponentFactories() {
#ifdef _DEBUG
    std::cout << "Anadiendo las factorias del juego\n";
#endif
    Tapioca::FactoryManager* factMngr = Tapioca::FactoryManager::instance();
    factMngr->addFactory("EjemploComponent", new MarIo::EjemploComponentFactory());
    //factMngr->addFactory("PlayerMovementController", new Tapioca::BasicBuilder<PlayerMovementController>());
}
