#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"

/**
* @brief Gestiona el sonido de la muerte de un objeto
*/
class JUEGO_API SoundObjectDie : public Tapioca::Component {
private:
    bool is3D;            // Indica si el sonido es 3D
    bool isLooping;       // Indica si el sonido es en bucle
    bool paused;          // Indica si el sonido esta pausado
    bool play;            // Indica si el sonido esta sonando
    bool playingS;        // Indica si el sonido esta sonando


//warning C4251 'SoundObjectDie::routeS':
//class 'std::basic_string<char,std::char_traits<char>,std::allocator<char>>' necesita tener una interfaz DLL
//para que la utilicen los clientes de class 'SoundObjectDie'
    #ifdef _MSC_VER
#pragma warning(disable : 4251)
#endif
    std::string routeS;   // Ruta del sonido
#ifdef _MSC_VER
#pragma warning(default : 4251)
#endif

    float timer;   // Temporizador para el sonido

public:
    COMPONENT_ID("SoundObjectDie");

    /**
    * @brief Constructora de la clase SoundObjectDie
    */
    SoundObjectDie();

    /**
    * @brief Metodo que se usa para recibir los parametros iniciales y guardarlos.
    * No garantiza que todos los componentes iniciales esten creados
    * @param variables unordered_map con los parametros iniciales
    * @return Devuelve true si se ha inicializado correctamente, false en caso contrario
    */
    bool initComponent(const CompMap& variables) override;
    /**
    * @brief Reproduce el sonido
    * @param deltaTime Tiempo trasncurrido desde el ultimo frame
    */
    void update(const uint64_t deltaTime) override;

    /**
    * @brief Crea el objeto que emitirá el sonido
    */
    void createSound();
};
