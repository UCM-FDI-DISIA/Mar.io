#include "MarIo.h"

#include "Structure/FactoryManager.h"
#include "WindowManager.h"
#include "SceneManager.h"
#include "Structure/ComponentBuilder.h"
#include <Structure/BasicBuilder.h>
#include "Components/PlayerMovementController.h"
#include "Components/CoinComponent.h"
#include "Components/ChestComponent.h"
#include "Components/PlayerSetting.h"
#include "Components/FistComponent.h"
#include "Components/CameraFollowComponent.h"
#include "Components/HealthComponent.h"
#include "Components/DoDamageComponent.h"
#include "Components/MorenaMovementComponent.h"
#include "components/FallDamageComponent.h"

// TODO: PRUEBA
#include "GraphicsManager.h"
#include "LightDirectional.h"

void init() {
    addComponentFactories();

    // PRUEBA (deja memory leaks)
    auto graphics = Tapioca::GraphicsManager::instance();
    auto node = graphics->createNode();
    auto light = graphics->createLightDirectional(node, Tapioca::Vector3(0.0f, -1.0f, -1.0f));
    light->produceShadows(true);
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
    factMngr->addFactory(new Tapioca::BasicBuilder<HealthComponent>());
    factMngr->addFactory(new Tapioca::BasicBuilder<DoDamageComponent>());
    factMngr->addFactory(new Tapioca::BasicBuilder<MarIo::MorenaMovementComponent>());
    factMngr->addFactory(new Tapioca::BasicBuilder<MarIo::FallDamageComponent>());
}

std::string getWindowName() { return "Mar.io"; }

std::string getInitScene() { return "GameMap1.lua"; }