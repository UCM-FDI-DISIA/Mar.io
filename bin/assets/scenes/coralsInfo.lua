coral1 = {
    components = {
        Transform = {
            positionX = 10.0,
            positionY = 3.0,
            positionZ = 10.0,
            scaleX = 1.0,
            scaleY = 1.0,
            scaleZ = 1.0,
            rotationX = 0.0,
            rotationY = 0.0,
            rotationZ = 0.0
        },
        MeshRenderer = {
            meshName = "models/corals/Coral1.mesh"
        },
        RigidBody = {  
            colShape = 0, --0 BOX, 1 SPHERE, 2 PLANE, 3 CAPSULE
            colliderScaleX = 1.5,
            colliderScaleY = 2.0,
            colliderScaleZ = 2.0,
            isTrigger = false,
            movementType = 1, --0 DYNAMIC , 1 STATIC, 2 KINEMATIC
            mass = 1.0,
            friction = 1.0,
            damping = 0.4,
            bounciness = 2.0
        },
        DoDamageComponent = {
            damage = 1
        }
    }
},

coral2 = {
    components = {
        Transform = {
            positionX = 10.0,
            positionY = 3.0,
            positionZ = 10.0,
            scaleX = 1.0,
            scaleY = 1.0,
            scaleZ = 1.0,
            rotationX = 0.0,
            rotationY = 0.0,
            rotationZ = 0.0
        },
        MeshRenderer = {
            meshName = "models/corals/Coral2.mesh"
        },
        RigidBody = {  
            colShape = 0, --0 BOX, 1 SPHERE, 2 PLANE, 3 CAPSULE
            colliderScaleX = 1.5,
            colliderScaleY = 2.0,
            colliderScaleZ = 2.0,
            isTrigger = false,
            movementType = 1, --0 DYNAMIC , 1 STATIC, 2 KINEMATIC
            mass = 1.0,
            friction = 1.0,
            damping = 0.4,
            bounciness = 2.0
        },
        DoDamageComponent = {
            damage = 1
        }
    }
},