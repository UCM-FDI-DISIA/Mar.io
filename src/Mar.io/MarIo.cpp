#include "MarIo.h"

#include "Structure/FactoryManager.h"
#include "SceneManager.h"
#include "Structure/ComponentBuilder.h"
#include <Structure/BasicBuilder.h>
#include "Components/PlayerMovementController.h"
#include "Components/CoinComponent.h"
#include "Components/ChestComponent.h"
#include "Components/PlayerSetting.h"
#include "Components/FistComponent.h"
#include "Components/CameraFollowComponent.h"

// TODO: PRUEBA
#include "GraphicsManager.h"
#include "Viewport.h"

bool init() {
    name();
    addComponentFactories();

    // PRUEBA (deja memory leaks)
    auto graphics = Tapioca::GraphicsManager::instance();
    /*auto nodeCamera = graphics->createNode(Tapioca::Vector3(50.0f, 50.0f, 50.0f));
    auto camera = graphics->createCamera(nodeCamera, "Hola");
    auto viewport = graphics->createViewport(camera, 1);
    viewport->setBackground(Tapioca::Vector3(0.925f, 0.698f, 0.941f));*/
    auto node = graphics->createNode();
    auto light = graphics->createLightDirectional(node, Tapioca::Vector3(0.0f, -1.0f, -1.0f));


    return Tapioca::SceneManager::instance()->loadScene("GameMap1.lua");

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
    factMngr->addFactory(new Tapioca::BasicBuilder<MarIo::PlayerMovementController>());
    factMngr->addFactory(new Tapioca::BasicBuilder<MarIo::CoinComponent>());
    factMngr->addFactory(new Tapioca::BasicBuilder<MarIo::ChestComponent>());
    factMngr->addFactory(new Tapioca::BasicBuilder<MarIo::PlayerSetting>());
    factMngr->addFactory(new Tapioca::BasicBuilder<MarIo::FistComponent>());
    factMngr->addFactory(new Tapioca::BasicBuilder<CameraFollowComponent>());
}
