scene = {
	{
		components = {
			Transform = {
				positionX = 50.0,
				positionY = 50.0,
				positionZ = 50.0,
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
				bgColorG = 0.698,
				bgColorB = 0.941
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
				meshName = "meshes/coin.mesh",
				materialName= "gold_coin_texture"
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
			},
			ChestComponent={

			}
			
   	 	}
	},
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
					rotationY = 0.0,
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
				Collider={}
				-- PlayerMovementController = {

				-- }
			}
		},
		{
			components = {
				Transform = {
					positionX = 0.0,
					positionY = 0.0,
					positionZ = 0.0,
					scaleX = 20.0,
					scaleY = 1.0,
					scaleZ = 15.0,
					rotationX = 0.0,
					rotationY = 0.0,
					rotationZ = 0.0
				},
				RigidBody = {
					colliderScaleX = 20.0,
					colliderScaleY = 1.0,
					colliderScaleZ = 15.0,
					isTrigger = false,
					mass = 1.0,
					friction = 1.0,
					damping = 0.4,
					bounciness = 0.0,
					colShape = 0,
					movementType = 1
				},
				MeshRenderer = {
					meshName  = "meshes/cube2.mesh",
					materialName = "white"
				}
			}
		},
		{
			components = {
				Transform = {
					positionX = 0.0,
					positionY = 14.89,
					positionZ = -33.52,
					scaleX = 20.0,
					scaleY = 1.0,
					scaleZ = 15.0,
					rotationX = 0.0,
					rotationY = 0.0,
					rotationZ = 0.0
				},
				RigidBody = {
					colliderScaleX = 20.0,
					colliderScaleY = 1.0,
					colliderScaleZ = 15.0,
					isTrigger = false,
					mass = 1.0,
					friction = 1.0,
					damping = 0.4,
					bounciness = 0.0,
					colShape = 0,
					movementType = 1
				},
				MeshRenderer = {
					meshName  = "meshes/cube2.mesh",
					materialName = "white"
				}
			}
		},
		{
			components = {
				Transform = {
					positionX = 7.2,
					positionY = 2.34,
					positionZ = -10.4,
					scaleX = 4.0,
					scaleY = 1.0,
					scaleZ = 2.0,
					rotationX = 0.0,
					rotationY = 0.0,
					rotationZ = 0.0
				},
				RigidBody = {
					colliderScaleX = 4.0,
					colliderScaleY = 1.0,
					colliderScaleZ = 2.0,
					isTrigger = false,
					mass = 1.0,
					friction = 1.0,
					damping = 0.4,
					bounciness = 0.0,
					colShape = 0,
					movementType = 1
				},
				MeshRenderer = {
					meshName  = "meshes/cube2.mesh",
					materialName = "white"
				}
			}
		},
		{
			components = {
				Transform = {
					positionX = -3.23,
					positionY = 7.9,
					positionZ = -10.4,
					scaleX = 4.0,
					scaleY = 1.0,
					scaleZ = 2.0,
					rotationX = 0.0,
					rotationY = 0.0,
					rotationZ = 0.0
				},
				RigidBody = {
					colliderScaleX = 4.0,
					colliderScaleY = 1.0,
					colliderScaleZ = 2.0,
					isTrigger = false,
					mass = 1.0,
					friction = 1.0,
					damping = 0.4,
					bounciness = 0.0,
					colShape = 0,
					movementType = 1
				},
				MeshRenderer = {
					meshName  = "meshes/cube2.mesh",
					materialName = "white"
				}
			}
		},
		{
			components = {
				Transform = {
					positionX = 7.2,
					positionY = 11.3,
					positionZ = -16.28,
					scaleX = 4.0,
					scaleY = 1.0,
					scaleZ = 2.0,
					rotationX = 0.0,
					rotationY = 0.0,
					rotationZ = 0.0
				},
				RigidBody = {
					colliderScaleX = 4.0,
					colliderScaleY = 1.0,
					colliderScaleZ = 2.0,
					isTrigger = false,
					mass = 1.0,
					friction = 1.0,
					damping = 0.4,
					bounciness = 0.0,
					colShape = 0,
					movementType = 1
				},
				MeshRenderer = {
					meshName  = "meshes/cube2.mesh",
					materialName = "white"
				}
			}
		}
}
