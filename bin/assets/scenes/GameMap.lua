scene  = {
	Camera = {
		components = {
			Transform = {
				positionX = 0.0,
				positionY = 0.0,
				positionZ = 0.0,
				scaleX = 1.0,
				scaleY = 1.0,
				scaleZ = 1.0,
				rotationX = 00.0,
				rotationY = 0.0,
				rotationZ = 00.0
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
				offsetY = 2.0,
				offsetZ = 10.0,
				smoothSpeed = 0.125,
				rotationSpeed = 0.1
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
			LightDirComp = {
				directionX = 0.0,
				directionY = -1.0,
				directionZ = -1.0,
				mainLight = true
			}
		}
	},

	
	Player = {
		components = {
			Transform = {
				positionX = 0.0,
				positionY = 1.0,
				positionZ = 4.5,
				scaleX = 1.0,
				scaleY = 1.6,
				scaleZ = 1.0,
				rotationX = 0.0,
				rotationY = 0.0,
				rotationZ = 0.0
			},
			MeshRenderer = {
				meshName  = "models/1mCube.mesh",
				materialName = "white",
				initRotationY = 0.0
			},
			RigidBody = {
				colliderScaleX = 0.5,
				colliderScaleY = 0.5,
				colliderScaleZ = 0.5,
				isTrigger = false,
				mass = 50.0,
				friction = 1.0,
				damping = 0.0,
				bounciness = 2.0,
				colShape = 0,
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
			}
		},
		children = {
			{
				components = {
					MeshRenderer = {
						meshName  = "models/1mCube.mesh",
						materialName = "white",
					},
					Transform = {
						positionX = 0.0,
						positionY = 0.0,
						positionZ = 0.0,
						scaleX = 5.87,
						scaleY = 1.0,
						scaleZ = 12.68,
						rotationX = 0.0,
						rotationY = 0.0,
						rotationZ = 0.0
					},
					RigidBody = {
						colliderScaleX = 0.5,
						colliderScaleY = 0.5,
						colliderScaleZ = 0.5,
						isTrigger = false,
						mass = 1.0,
						friction = 1.0,
						damping = 0.4,
						bounciness = 0.0,
						colShape = 0,
						movementType = 1
					}
				}
			},
			{
				components = {
					MeshRenderer = {
						meshName  = "models/1mCube.mesh",
						materialName = "white",
					},
					Transform = {
						positionX = 0.0,
						positionY = -2.56,
						positionZ = -12.43,
						scaleX = 5.87,
						scaleY = 1.0,
						scaleZ = 12.68,
						rotationX = 0.0,
						rotationY = 0.0,
						rotationZ = 0.0
					},
					RigidBody = {
						colliderScaleX = 0.5,
						colliderScaleY = 0.5,
						colliderScaleZ = 0.5,
						isTrigger = false,
						mass = 1.0,
						friction = 1.0,
						damping = 0.4,
						bounciness = 0.0,
						colShape = 0,
						movementType = 1
					}
				}
			}
		}
	},

	



}
