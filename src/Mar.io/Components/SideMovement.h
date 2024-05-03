#pragma once
#include "Structure/Component.h"
#include "gameDefs.h"
#include "Utilities/Vector3.h"

namespace Tapioca {
class Transform;
}

class JUEGO_API SideMovement : public Tapioca::Component {
private:
    enum movementState { going, turning, coming, turningBack };
    movementState state;
    const float THRESHOLD = 0.15f;

    float movementDistance;
    float movSpd;
    float rotSpd;
    Tapioca::Vector3 initPos;
    Tapioca::Vector3 nextPos;
    Tapioca::Vector3 initDir;
    Tapioca::Vector3 dir;
    float rot;
    float initRot;

    Tapioca::Transform* transform;
    
public:
    COMPONENT_ID("SideMovement")

    /*
    * @brief Constructora de la clase SideMovement
    */
    SideMovement();
    /*
    * @brief Destructora de la clase SideMovement
    */
    ~SideMovement();

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

    void start() override;

    void update(const uint64_t deltaTime) override;
};