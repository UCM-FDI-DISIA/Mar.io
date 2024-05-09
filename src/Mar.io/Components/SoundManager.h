#pragma once
#include "Structure/Component.h"
#include "Utilities/Singleton.h"
#include "Structure/ComponentBuilder.h"
#include <string>
#include "gameDefs.h"


namespace Tapioca {
class AudioSourceComponent;
}


class JUEGO_API SoundManager : public Tapioca::Component, public Tapioca::Singleton<SoundManager> {
private:
    friend Singleton<SoundManager>;

    enum Sounds { Coin, Walk, Jump, Hurt, Fist, Heal, Invincibility, Sounds_MAX };

    // warning C4251 'GameManager::audios':
    // class 'std::vector<Tapioca::AudioSourceComponent *,std::allocator<Tapioca::AudioSourceComponent *>>' necesita
    // tener una interfaz DLL para que la utilicen los clientes de class 'GameManager'
#ifdef _MSC_VER
#pragma warning(disable : 4251)
#endif
    std ::vector<Tapioca::AudioSourceComponent*> audios;   // Sonidos del juego
#ifdef _MSC_VER
#pragma warning(default : 4251)
#endif

    SoundManager();

public:
    COMPONENT_ID("SoundManager");

    SoundManager(SoundManager&) = delete;
    SoundManager(SoundManager&&) = delete;
    SoundManager& operator=(SoundManager&) = delete;
    SoundManager& operator=(SoundManager&&) = delete;

    bool initComponent(const CompMap& variables) override;
    void start() override;
    void update(const uint64_t deltaTime) override;
    void handleEvent(std::string const& id, void* info) override;
};

class JUEGO_API SoundManagerBuilder : public Tapioca::ComponentBuilder {
public:
    SoundManagerBuilder() : Tapioca::ComponentBuilder(SoundManager::id) { }

    inline Tapioca::Component* createComponent() override { return SoundManager::create(); }
};
