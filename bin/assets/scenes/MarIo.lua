
scene={
    Player={
        components= {

            Transform = {
                positionX = 0.0,
                positionY = 3.0,
                positionZ = 0.0,
                scaleX = 2.0,
                scaleY = 2.0,
                scaleZ = 2.0,
                rotationX = 0.0,
                rotationY = 200.0,
                rotationZ = 0.0
            },
            MeshRenderer = {
                meshName = "racoon/pirateRaccoon/PirateRacoon.mesh"
            },
            RigidBody = {    
                colShape=3, --0 BOX, 1 SPHERE, 2 PLANE, 3 CAPSULE
                colliderScaleX=2.0,
                colliderScaleY=5.0,
                colliderScaleZ=2.0,
                isTrigger=false,
                movementType=0, --0 DYNAMIC , 1 STATIC, 2 KINEMATIC
                mass=3.0,
                friction=1.0,
                damping=0.4,
                bounciness=2.0
            },
            -- PlayerMovementController = {

            -- }
      }
    },
    Ground={
        components={

        Transform = {
            positionX = 0.0,
            positionY = -5.0,
            positionZ = 0.0,
            scaleX = 0.2,
            scaleY = 0.02,
            scaleZ = 0.2,
            rotationX = 0.0,
            rotationY = 0.0,
            rotationZ = 0.0
        },
        MeshRenderer = {    
            meshName = "meshes/cube.mesh",
            materialName= "grass"
        },
        RigidBody = {    
            colShape=0, --0 BOX, 1 SPHERE, 2 PLANE, 3 CAPSULE
            colliderScaleX=10.0,
            colliderScaleY=1.0,
            colliderScaleZ=10.0,
            isTrigger=false,
            movementType=1, --0 DYNAMIC , 1 STATIC, 2 KINEMATIC
            mass=0.0,
            friction=1.0,
            damping=0.0,
            bounciness=0.01
        }
    }
    },
    {
        components={

        Transform = {
            positionX = 0.0,
            positionY = 10.0,
            positionZ = 1.0,
            scaleX = 1.0,
            scaleY = 1.0,
            scaleZ = 1.0,
            rotationX = 0.0,
            rotationY = 0.0,
            rotationZ = 0.0
        },
        MeshRenderer = {    
            meshName = "meshes/cube2.mesh",
            materialName= "grass"
        },
        RigidBody = {    
            colShape=0, --0 BOX, 1 SPHERE, 2 PLANE, 3 CAPSULE
            colliderScaleX=1.0,
            colliderScaleY=1.0,
            colliderScaleZ=1.0,
            isTrigger=false,
            movementType=0, --0 DYNAMIC , 1 STATIC, 2 KINEMATIC
            mass=1.0,
            friction=1.0,
            damping=0.0,
            bounciness=0.01
        }
    }
    }
    

-- + escenas
}

