#include "MarIo.h"

#include "Structure/FactoryManager.h"
#include "WindowManager.h"
#include "SceneManager.h"
#include "Structure/ComponentBuilder.h"
#include <Structure/BasicBuilder.h>

#include "Components/GameManager.h"
#include "Components/PlayerMovementController.h"
#include "Components/Coin.h"
#include "Components/Chest.h"
#include "Components/PlayerSetting.h"
#include "Components/Fist.h"
#include "Components/CameraFollow.h"
#include "Components/Health.h"
#include "Components/Coral.h"
#include "Components/MorenaMovement.h"
#include "components/FallDamage.h"
#include "Components/SideMovement.h"

void init() {
    addComponentFactories();
}

void addComponentFactories() {
#ifdef _DEBUG
    std::cout << "Anadiendo las factorias del juego\n";
#endif
    Tapioca::FactoryManager* factMngr = Tapioca::FactoryManager::instance();
    factMngr->addFactory(new MarIo::GameManagerBuilder());
    factMngr->addFactory(new Tapioca::BasicBuilder<MarIo::PlayerMovementController>());
    factMngr->addFactory(new Tapioca::BasicBuilder<MarIo::PlayerSetting>());
    factMngr->addFactory(new Tapioca::BasicBuilder<MarIo::Fist>());
    factMngr->addFactory(new Tapioca::BasicBuilder<CameraFollow>());

    factMngr->addFactory(new Tapioca::BasicBuilder<MarIo::Coin>());
    factMngr->addFactory(new Tapioca::BasicBuilder<MarIo::Chest>());

    factMngr->addFactory(new Tapioca::BasicBuilder<Health>());
    factMngr->addFactory(new Tapioca::BasicBuilder<Coral>());
    factMngr->addFactory(new Tapioca::BasicBuilder<MarIo::MorenaMovement>());
    factMngr->addFactory(new Tapioca::BasicBuilder<MarIo::FallDamage>());
    factMngr->addFactory(new Tapioca::BasicBuilder<SideMovement>());
}

std::string getWindowName() { return "Mar.io"; }

std::string getInitScene() { return "Nivel1.lua"; }