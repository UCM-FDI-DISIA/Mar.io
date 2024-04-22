scene  = {
    {
        components = {
            Transform = {
                positionX = 0.0,
                positionY = 0.0,
                positionZ = 0.0,
                scaleX = 1.0,
                scaleY = 1.0,
                scaleZ = 1.0,
                rotationX = 0.0,
                rotationY = 0.0,
                rotationZ = 0.0
            },
            LightDirComp = {
                directionX = 0.0,
                directionY = -1.0,
                directionZ = -1.0,
                mainLight = true
            },
            AudioListenerComponent = {},
            AudioSourceComponent = {
                islooping = true,
                ispaused = false,
                sourcepath= "assets/audio/SpongeBob.mp3"
            }
        }
    },

    {
        components = {
            Transform = {
                positionX = 0.0,
                positionY = 0.0,
                positionZ = 0.0,
                scaleX = 1.0,
                scaleY = 1.0,
                scaleZ = 1.0,
                rotationX = 0.0,
                rotationY = 0.0,
                rotationZ = 0.0
            },
            CameraComponent = {
                zOrder = 0,
                bgColorR = 0.925,
                bgColorG = 698.0,
                bgColorB = 941.0
            },
            CameraFollow = {
                target = "Player",
                offsetX = 0.0,
                offsetY = 8.0,
                offsetZ = 40.0,
                smoothSpeed = 0.125,
                rotationSpeed = 0.1
            }
        }
    },
    CheckPoint={
        components = {
            Transform = {
                positionX = -6.0,
                positionY = 3.0,
                positionZ = 0.0,
                scaleX = 1.0,
                scaleY = 1.0,
                scaleZ = 1.0,
                rotationX = 0.0,
                rotationY = 1.0,
                rotationZ = 0.0
            },
            MeshRenderer = {
                meshName  = "models/checkpoint/checkpoint.mesh",
                initRotationY = 0.0
            },
            CheckPoint={
                spawnPositionX = -6.0,
                spawnPositionY = 7.0,



            },
            RigidBody = {
                colliderScaleX = 1.0,
                colliderScaleY = 1.0,
                colliderScaleZ = 1.0,
                isTrigger = false,
                mass = 1.0,
                friction = 0.0,
                damping = 0.4,
                bounciness = 0.0,
                colShape = 0,
                movementType = 1
            }
        }
    },
    FishingNet={
        components = {
            Transform = {
                positionX = 0.0,
                positionY = 3.0,
                positionZ = 0.0,
                scaleX = 2.0,
                scaleY = 2.0,
                scaleZ = 2.0,
                rotationX = 0.0,
                rotationY = 1.0,
                rotationZ = 0.0
            },
            MeshRenderer = {
                meshName  = "models/fishingnet/fishingnet.mesh",
                initRotationY = 0.0
            },
        }
    },
    Player = {
        components = {
            Transform = {
                positionX = 0.0,
                positionY = 8.0,
                positionZ = 0.0,
                scaleX = 2.0,
                scaleY = 2.0,
                scaleZ = 2.0,
                rotationX = 0.0,
                rotationY = 1.0,
                rotationZ = 0.0
            },
            MeshRenderer = {
                meshName  = "models/pirateRaccoon/PirateRacoon.mesh",
                initRotationY = 0.0
            },
            RigidBody = {
                colliderScaleX = 2.0,
                colliderScaleY = 5.0,
                colliderScaleZ = 2.0,
                isTrigger = false,
                mass = 10.0,
                friction = 0.6,
                damping = 0.4,
                bounciness = 2.0,
                colShape = 3,
                movementType = 0
            },
            PlayerMovementController = {
            },
            PlayerSetting = {
            },
            FallDamage = {
            },
            Health = {
                maxHealth = 2,
                currHealth = 1,
                gracePeriod = 1.0
            }
        },
        children = {
            {
                components = {
                    Transform = {
                        positionX = -8.34,
                        positionY = 3.3,
                        positionZ = -17.98,
                        scaleX = 1.0,
                        scaleY = 1.0,
                        scaleZ = 1.0,
                        rotationX = 0.0,
                        rotationY = 1.0,
                        rotationZ = 0.0
                    },
                    RigidBody = {
                        colliderScaleX = 2.0,
                        colliderScaleY = 2.0,
                        colliderScaleZ = 2.0,
                        isTrigger = true,
                        mass = 0.0,
                        friction = 1.0,
                        damping = 0.4,
                        bounciness = 0.0,
                        colShape = 0,
                        movementType = 2
                    },
                    Fist = {
                        coolDown = 1000.0,
                        duration = 100.0
                    }
                }
            }
        }
    },
    {
        components = {
            Transform = {
                positionX = 0.0,
                positionY = -10.0,
                positionZ = 0.0,
                scaleX = 6.0,
                scaleY = 2.0,
                scaleZ = 8.0,
                rotationX = 0.0,
                rotationY = 0.0,
                rotationZ = 0.0
            },
            RigidBody = {
                colliderScaleX = 6.0,
                colliderScaleY = 2.0,
                colliderScaleZ = 8.0,
                isTrigger = false,
                mass = 1.0,
                friction = 0.0,
                damping = 0.4,
                bounciness = 0.0,
                colShape = 0,
                movementType = 1
            },
            MeshRenderer = {
                meshName  = "models/cube2.mesh",
                materialName = "grass"
            }
        }
    }
}
    
    