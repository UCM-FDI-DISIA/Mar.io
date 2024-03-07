
scene={
    Player={
        components= {

            Transform = {
                positionX = 0.0,
                positionY = 3.0,
                positionZ = 0.0,
                scaleX = 0.01,
                scaleY = 0.02,
                scaleZ = 0.01,
                rotationX = 0.0,
                rotationY = 0.0,
                rotationZ = 0.0
            },
            MeshRenderer = {    
                meshName = "meshes/sphere.mesh",
                materialName= "red"
            },
            RigidBody = {    
                colShape=3, --0 BOX, 1 SPHERE, 2 PLANE, 3 CAPSULE
                colliderScaleX=2.0,
                colliderScaleY=2.0,
                colliderScaleZ=2.0,
                isTrigger=false,
                movementType=0, --0 DYNAMIC , 1 STATIC, 2 KINEMATIC
                mass=3.0,
                friction=1.0,
                damping=0.4,
                bounciness=2.0
            }
      }
    },
    Ground={
        components={

        Transform = {
            positionX = 0.0,
            positionY = -5.0,
            positionZ = 0.0,
            scaleX = 0.15,
            scaleY = 0.02,
            scaleZ = 0.1,
            rotationX = 0.0,
            rotationY = 0.0,
            rotationZ = 0.0
        },
        MeshRenderer = {    
            meshName = "meshes/cube.mesh",
            materialName= "green"
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
    }
    

-- + escenas
}

