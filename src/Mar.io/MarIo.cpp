#include "MarIo.h"

#include "Structure/FactoryManager.h"
#include "WindowManager.h"
#include "Structure/ComponentBuilder.h"
#include "Structure/BasicBuilder.h"

#include "Components/GameManager.h"
#include "Components/PlayerMovementController.h"
#include "Components/Coin.h"
#include "Components/Chest.h"
#include "Components/PlayerSetting.h"
#include "Components/Fist.h"
#include "Components/CameraFollow.h"
#include "Components/Health.h"
#include "Components/ContactDamage.h"
#include "components/FallDamage.h"
#include "Components/SideMovement.h"
#include "Components/Enemy.h"
#include "Components/CheckPoint.h"
#include "Components/PhishingNet.h"
#include "Components/Score.h"
#include "Components/HeartPowerUp.h"
#include "Components/InvincibilityPowerUp.h"
#include "Components/Goal.h"
#include "Components/LevelScore.h"

void init() { addComponentFactories(); }

void addComponentFactories() {
#ifdef _DEBUG
    std::cout << "Anadiendo las factorias del juego\n";
#endif
    Tapioca::FactoryManager* factMngr = Tapioca::FactoryManager::instance();
    factMngr->addBuilder(new GameManagerBuilder());
    factMngr->addBuilder(new Tapioca::BasicBuilder<PlayerMovementController>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<PlayerSetting>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<Fist>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<CameraFollow>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<Coin>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<Chest>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<Health>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<ContactDamage>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<FallDamage>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<SideMovement>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<Enemy>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<CheckPoint>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<PhishingNet>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<Score>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<HeartPowerUp>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<InvincibilityPowerUp>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<Goal>());
    factMngr->addBuilder(new Tapioca::BasicBuilder<LevelScore>());
}

const char* getWindowName() { return "Mar.io"; }

const char* getInitScene() { return "StartScene.lua"; }
