#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"
#include "Utilities/Vector3.h"

namespace Tapioca {
class Transform;
class CameraComponent;
}

/**
* @brief Componente que hace que la camara siga a un objeto
*/
class JUEGO_API CameraFollow : public Tapioca::Component {
private:
    Tapioca::Transform* transform;         // Componente Transform de la camara
    Tapioca::Transform* targetTransform;   // Componente Transform del objeto a seguir
    Tapioca::CameraComponent* camera;      // Componente CameraComponent de la camara

// warning C4251 'CameraFollow::targetName' :
// class 'std::basic_string<char,std::char_traits<char>,std::allocator<char>>' necesita tener una interfaz DLL
// para que la utilicen los clientes de class 'CameraFollow'
#ifdef _MSC_VER
#pragma warning(disable : 4251)
#endif
    std::string targetName;   // Nombre del objeto a seguir
#ifdef _MSC_VER
#pragma warning(default : 4251)
#endif

    const Tapioca::Vector3 DEF_OFFSET = {0, 1, 1};   // Offset de la camara por defecto
    const float DEF_SMOOTH_SPD = 0.125f;             // Velocidad de suavizado por defecto
    const float DEF_ROT_SPD = 0.1f;                  // Velocidad de rotacion por defecto
    const Tapioca::Vector3 startOffset = Tapioca::Vector3(0, 0.7, 1);   // Offset por defecto para el objetivo de la cámara
    const Tapioca::Vector3 endOffset = Tapioca::Vector3(0, 2, 10);      // Offset por defecto de la posición de la cámara    

    Tapioca::Vector3 offset;   // Offset de la camara
    float smoothSpeed;         // Velocidad de suavizado
    float rotationSpeed;       // Velocidad de rotacion

public:
    COMPONENT_ID("CameraFollow")

    /*
    * @brief Constructora de la clase CameraFollow
    */
    CameraFollow();
    /*
    * @brief Destructora de la clase CameraFollow
    */
    ~CameraFollow();

    /**
    * @brief Metodo que se usa para recibir los parametros iniciales y guardarlos.
    * No garantiza que todos los componentes iniciales esten creados
    * @param variables unordered_map con los parametros iniciales
    * @return Devuelve true si se ha inicializado correctamente, false en caso contrario
    */
    bool initComponent(const CompMap& variables) override;
    /**
    * @brief Metodo que se usa para inicializar el componente. Se ejecuta antes que el start
    * Garantiza que todos los componentes iniciales esten creados
    */
    void awake() override;
    /**
    * @brief Establece la posicion de la camara
    */
    void start() override;
    /**
    * @brief Actualiza la posicion de la camara
    */
    void fixedUpdate() override;
};
