scene = {
	{
		Prefab = {
			NormalCoin = {
				components = {
					Transform = {
						positionX = 0.0,
						positionY = 0.0,
						positionZ = 0.0,
						scaleX = 1.5,
						scaleY = 1.5,
						scaleZ = 1.5,
						rotationX = 0.0,
						rotationY = 0.0,
						rotationZ = 0.0
					},
					RigidBody = {
						colliderScaleX = 0.25,
						colliderScaleY = 0.25,
						colliderScaleZ = 0.1,
						isTrigger = false,
						mass = 1.0,
						friction = 1.0,
						damping = 1.0,
						bounciness = 0.0,
						colShape = 0,
						movementType = 0
					},
					MeshRenderer = {
						meshName  = "models/coin/Coin.mesh"
					},
					Coin = { },
					SoundObjectDie = {
						is3D = true, 
						routeS = "coin.mp3",
						play = false
					}
				}
			}
		}
	},
	{
		Prefab = {
			ChestCoin = {
				components = {
					Transform = {
						positionX = 0.0,
						positionY = 0.0,
						positionZ = 0.0,
						scaleX = 1.5,
						scaleY = 1.5,
						scaleZ = 1.5,
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
						movementType = 0
					},
					MeshRenderer = {
						meshName  = "models/coin/Coin.mesh"
					},
					Coin = { },
					SoundObjectDie = {
						is3D = true, 
						routeS = "coin.mp3",
						play = false
					}
				}
			}
		}
	},
	{
		Prefab = {
			Turtle = {
				components = {
					Transform = {
						positionX = 0.0,
						positionY = 0.0,
						positionZ = 0.0,
						scaleX = 0.55,
						scaleY = 0.55,
						scaleZ = 0.55,
						rotationX = 0.0,
						rotationY = -90.0,
						rotationZ = 0.0
					},
					RigidBody = {
						colliderScaleX = 0.7,
						colliderScaleY = 0.5,
						colliderScaleZ = 1.5,
						isTrigger = false,
						mass = 1.0,
						friction = 0.0,
						damping = 0.0,
						bounciness = 0.0,
						colShape = 0,
						movementType = 2
					},
					MeshRenderer = {
						meshName  = "models/turtle/Turtle.mesh",
					},
					Animator = { 
						initAnim = "Swim",
					},
					SideMovement = {
						movementDistance = 5.0,
						initDirX = 1.0,
						initDirY = 0.0,
						initDirZ = 0.0,
						movSpd = 1.0,
						rotSpd = 90.0
					},
					ContactDamage = {
						damage = 1
					},
					EnemyHealth = {	}
				},
				children = {
					{
						components = {
							Transform = {
								positionX = 0.0,
								positionY = 0.5,
								positionZ = 0.0,
								scaleX = 0.55,
								scaleY = 0.55,
								scaleZ = 0.55,
								rotationX = 0.0,
								rotationY = -90.0,
								rotationZ = 0.0
							},
							RigidBody = {
								colliderScaleX = 0.8,
								colliderScaleY = 0.5,
								colliderScaleZ = 1.5,
								isTrigger = false,
								mass = 1.0,
								friction = 0.0,
								damping = 0.0,
								bounciness = 0.5,
								colShape = 0,
								movementType = 2
							},
							
						},
					}
				}
			}
		}
	},
}
