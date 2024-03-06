#pragma once
namespace Tapioca {
class FactoryManager;
class SceneManager;
}

#define JUEGO_API __declspec(dllexport)

extern "C" {
/*
* @brief Nombre del juego
*/
JUEGO_API void name();
/*
* @brief Saluda a una persona
* @param nombre Nombre de la persona a saludar
*/
JUEGO_API void init(Tapioca::FactoryManager* factMngr, Tapioca::SceneManager* sceneMngr);
/**
* @brief Anade las factorias de componentes del juego
*/
JUEGO_API void addComponentFactories(Tapioca::FactoryManager* factMngr);
}
