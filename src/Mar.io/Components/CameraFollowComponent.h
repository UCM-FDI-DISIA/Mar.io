#pragma once
#include <Structure/Component.h>
#include "../gameDefs.h"
#include <Utilities/Vector3.h>

namespace Tapioca {
class Transform;
class CameraComponent;
}

class JUEGO_API CameraFollowComponent : public Tapioca::Component {
private:
    Tapioca::Transform* transform;
    Tapioca::Transform* targetTransform;
    Tapioca::CameraComponent* camera;
    std::string targetName;


    const Tapioca::Vector3 DEF_OFFSET = {0, 1, 1}; 
    const float DEF_SMOOTH_SPD = 0.125f;
    const float DEF_ROT_SPD = 0.1f;

    Tapioca::Vector3 offset;
    float smoothSpeed;
    float rotationSpeed;
    

public:
    COMPONENT_ID("CameraFollowComponent")

    /*
    * @brief Constructora de la clase CameraFollowComponent
    */
    CameraFollowComponent();
    /*
    * @brief Destructora de la clase CameraFollowComponent
    */
    ~CameraFollowComponent();

    /*
    * @brief Metodo que se usa para recibir los parametros iniciales y guardarlos.
    * No garantiza que todos los componentes iniciales esten creados
    * @param variables unordered_map con los parametros iniciales
    * @return Devuelve true si se ha inicializado correctamente, false en caso contrario
    */
    bool initComponent(const CompMap& variables) override;
    /*
    * @brief Metodo que se usa para inicializar el componente. Se ejecuta antes que el start
    * Garantiza que todos los componentes iniciales esten creados
    */
    void awake() override;

    /*
    * @brief Metodo que se usa para recibir eventos.
    * Se llama nada mas se recibe el evento, si es un evento de ventana se recibe en el pushEvent.
    * @param Id indica el tipo de mensaje
    * @param info puntero a void para pasar parametros
    */
    void handleEvent(std::string const& id, void* info) override;

    void update(const uint64_t deltaTime) override;
};