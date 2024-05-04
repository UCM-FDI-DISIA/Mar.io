scene  = {
	Camera = {
		components = {
			Transform = {
				positionX = 0.0,
				positionY = 0.0,
				positionZ = -10.0,
				scaleX = 1.0,
				scaleY = 1.0,
				scaleZ = 1.0,
				rotationX = 0.0,
				rotationY = 0.0,
				rotationZ = 0.0
			},
			CameraComponent = {
				zOrder = 0,
				bgColorR = 0.0,
				bgColorG = 0.45,
				bgColorB = 0.6
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

	Light = {
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
				directionX = 1.0,
				directionY = -1.0,
				directionZ = -1.0,
				mainLight = true,
				powerScale = 1.5,
				colorR = 0.2,
				colorG = 0.7,
				colorB = 1.0,
				colorA = 1.0
			}
		}
	},

	UI = {
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
		},
		children = {
			{
				components = {
					MeshRenderer = {
						meshName  = "models/heart/heart.mesh",
						materialName = "heart",
						initRotationX = -90.0
					},
					Transform = {
						positionX = -5.34,
						positionY = 3.3,
						positionZ = -17.98,
						scaleX = 0.8,
						scaleY = 0.8,
						scaleZ = 0.8,
						rotationX = 0.0,
						rotationY = 0.0,
						rotationZ = 0.0
					},
					RigidBody = {
						colliderScaleX = 1.5,
						colliderScaleY = 1.5,
						colliderScaleZ = 0.8,
						isTrigger = true,
						mass = 1.0,
						friction = 1.0,
						damping = 0.0,
						bounciness = 0.0,
						colShape = 0,
						movementType = 1
					},
					HeartPowerUp = {
					}
				}
			},
			{
				components = {
					MeshRenderer = {
						meshName  = "models/heart/heart.mesh",
						materialName = "heart",
						initRotationX = -90.0
					},
					Transform = {
						positionX = -1.34,
						positionY = 3.3,
						positionZ = -17.98,
						scaleX = 0.8,
						scaleY = 0.8,
						scaleZ = 0.8,
						rotationX = 0.0,
						rotationY = 0.0,
						rotationZ = 0.0
					},
					RigidBody = {
						colliderScaleX = 1.5,
						colliderScaleY = 1.5,
						colliderScaleZ = 0.8,
						isTrigger = true,
						mass = 1.0,
						friction = 1.0,
						damping = 0.0,
						bounciness = 0.0,
						colShape = 0,
						movementType = 1
					},
					InvincibilityPowerUp = {
						invincibilityTime = 300.0
					}
				}
			},
			livesHUd={
				components={
					Transform = {
						positionX = 50.0,
						positionY = 40.0,
						positionZ = 0.0,
						scaleX = 100.0,
						scaleY = 100.0,
						scaleZ = 0.5,
						rotationX = 0.0,
						rotationY = 0.0,
						rotationZ = 0.0
					},
					Image={
						imagePath = "raccoonface.png"
					},
				}
			},
			livesText = {
				components = {
					Transform = {
						positionX = 120.0,
						positionY = 40.0
					},
					Text = {
						text = "X0",
						textSize = 30.0,
						textFontName = "AGENCYB.TTF",
						textColorR = 0.75,
						textColorG = 0.75,
						textColorB = 0.75,
						textColorA = 1.0
					}
				
				}
			},
			coinsHUd={
				components={
					Transform = {
						positionX = 630.0,
						positionY = 40.0,
						positionZ = 0.0,
						scaleX = 75.0,
						scaleY = 75.0,
						scaleZ = 0.5,
						rotationX = 0.0,
						rotationY = 0.0,
						rotationZ = 0.0
					},
					Image={
						imagePath="hudcoin.png"
					}
				}
			},
			coinsText = {
				components = {
					Transform = {
						positionX = 580.0,
						positionY = 40.0
					},
					Text = {
						text = "0X",
						textSize = 30.0,
						textFontName = "AGENCYB.TTF",
						textColorR = 0.75,
						textColorG = 0.75,
						textColorB = 0.75,
						textColorA = 1.0
						
					}
				
				}
			},
		}
	},
	Sky = {
		components = {
			Transform = {
				positionX = 0.0,
				positionY = 0.0,
				positionZ = 0.0,
				scaleX = 1000.0,
				scaleY = 1000.0,
				scaleZ = 1000.0,
				rotationX = 0.0,
				rotationY = 0.0,
				rotationZ = 0.0
			}
			-- ,
			-- SkyboxComponent = {
			-- 	planeName="SkyBox",
			-- 	materialName="sky",
			-- 	distC=1000.0,
			-- 	orderC=true
			-- }
		}
	},
	Player = {
		components = {
			Transform = {
				positionX = 0.0,
				positionY = 27.45,
				positionZ = -5.0,
				scaleX = 1.3,
				scaleY = 1.3,
				scaleZ = 1.3,
				rotationX = 0.0,
				rotationY = 0.0,
				rotationZ = 0.0
			},
			MeshRenderer = {
				meshName  = "models/pirateRaccoon/PirateRacoon.mesh",
			},
			Animator={ },

			RigidBody = {
				colliderScaleX = 0.3,
				colliderScaleY = 0.5,
				colliderScaleZ = 0.3,
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
			},
			Score = {
			}
		},
		children = {
			FistC={
				components = {
					Transform = {
						positionX = 0.0,
						positionY = 15.0,
						positionZ = 0.0,
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
			},
			PlayerLight={
				components = {
					Transform = {
						positionX = 0.0,
						positionY = 50.0,
						positionZ = 0.0,
						scaleX = 1.0,
						scaleY = 1.0,
						scaleZ = 1.0,
						rotationX = 0.0,
						rotationY = 0.0,
						rotationZ = 0.0
				},
				-- LightPointComp = {
				-- 	powerScale = 0.0,
				-- 	colorR = 1.0,
				-- 	colorG = 1.0,
				-- 	colorB = 1.0,
				-- 	colorA = 1.0,
				-- 	attenuationFactor=10.0
				-- }
				LightSpotComp = {
					directionX = 0.0,
					directionY = -1.0,
					directionZ = 0.0,
					mainLight = false,
					colorR = 0.6,
					colorG = 0.5,
					colorB = 0.7,
					colorA = 1.0,
					powerScale =50.0,
					attenuationFactor = 1.0,
					falloff = 0.2,
					innerAngle = 50.0,
					outerAngle = 100.0
				}
			}
			}
		}
	},

	
	Scenario = {
		components = {
			Transform = {
				positionX = 0.0,
				positionY = 0.0,
				positionZ = 0.0,
				scaleX = 1.0,
				scaleY = 1.0,
				scaleZ = 1.0,
				rotationX = 0.0,
				rotationY =  90.0,
				rotationZ = 0.0
			}
		},
		children = {
			Corals = {
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
					MeshRenderer = {
						meshName  = "models/scenario/Corals.mesh"
					},
				},
			},
			Seaweed = {
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
					MeshRenderer = {
						meshName  = "models/scenario/Seaweed.mesh",
					},
				},
			},
			Background = {
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
					MeshRenderer = {
						meshName  = "models/scenario/Background.mesh",
					},
				},
			},
			Rocks = {
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
					MeshRenderer = {
						meshName  = "models/scenario/Rocks.mesh",
					}
					,
					RigidBody = {
						colliderScaleX = 1.0,
						colliderScaleY = 1.0,
						colliderScaleZ = 1.0,
						isTrigger = false,
						mass = 1.0,
						friction = 1.0,
						damping = 0.4,
						bounciness = 0.0,
						colShape = 4,
						movementType = 1,
						file= "models/scenario/Rocks.obj"
					}
				},
			},

			Platform1 = {
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
					MeshRenderer = {
						meshName  = "models/scenario/Platform1.mesh",
					},
					RigidBody = {
						colliderScaleX = 1.0,
						colliderScaleY = 1.0,
						colliderScaleZ = 1.0,
						isTrigger = false,
						mass = 1.0,
						friction = 1.0,
						damping = 0.4,
						bounciness = 0.0,
						colShape = 4,
						movementType = 1,
						file = "models/scenario/Platform1.obj"
					}

				}
			},

			Stairs = {
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
					MeshRenderer = {
						meshName  = "models/scenario/Stairs.mesh",
					}
					,
					RigidBody = {
						colliderScaleX = 1.0,
						colliderScaleY = 1.0,
						colliderScaleZ = 1.0,
						isTrigger = false,
						mass = 1.0,
						friction = 1.0,
						damping = 0.4,
						bounciness = 0.0,
						colShape = 4,
						movementType = 1,
						file= "models/scenario/Stairs.obj"
					}
				}
				

			},

			Platform2 = {
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
					MeshRenderer = {
						meshName  = "models/scenario/Platform2.mesh",
					}
					,
					RigidBody = {
						colliderScaleX = 1.0,
						colliderScaleY = 1.0,
						colliderScaleZ = 1.0,
						isTrigger = false,
						mass = 1.0,
						friction = 1.0,
						damping = 0.4,
						bounciness = 0.0,
						colShape = 4,
						movementType = 1,
						file= "models/scenario/Platform2.obj"
					}
				}
			},

			Platform3 = {
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
					MeshRenderer = {
						meshName  = "models/scenario/Platform3.mesh",
					}
					,
					RigidBody = {
						colliderScaleX = 1.0,
						colliderScaleY = 1.0,
						colliderScaleZ = 1.0,
						isTrigger = false,
						mass = 1.0,
						friction = 1.0,
						damping = 0.4,
						bounciness = 0.0,
						colShape = 4,
						movementType = 1,
						file= "models/scenario/Platform3.obj"
					}
				}
			},
			
		}
	},
	
	Enemies = {
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
			-- Crabs
			{
				components = {
					Transform = {
						positionX = -3.0,
						positionY = 26.81,
						positionZ = -12.45,
						scaleX = 0.50,
						scaleY = 0.50,
						scaleZ = 0.50,
						rotationX = 0.0,
						rotationY = 180.0,
						rotationZ = 0.0
					},
					RigidBody = {
						colliderScaleX = 1.0,
						colliderScaleY = 1.0,
						colliderScaleZ = 1.0,
						isTrigger = false,
						mass = 1.0,
						friction = 0.0,
						damping = 0.0,
						bounciness = 0.0,
						colShape = 0,
						movementType = 2
					},
					MeshRenderer = {
						meshName  = "models/crab/Crab.mesh",
						initRotationY = 0.0
					},
					Animator = { 
						initAnim = "Walk",
					},
					SideMovement = {
						movementDistance = 6.0,
						initDirX = 1.0,
						initDirY = 0.0,
						initDirZ = 0.0,
						movSpd = 1.0,
						rotSpd = 90.0
					},
					ContactDamage = {
						damage = 1
					}

				},
			},
			{
				components = {
					Transform = {
						positionX = 3.0,
						positionY = 20.29,
						positionZ = -33.83,
						scaleX = 0.50,
						scaleY = 0.50,
						scaleZ = 0.50,
						rotationX = 0.0,
						rotationY = 0.0,
						rotationZ = 0.0
					},
					RigidBody = {
						colliderScaleX = 1.0,
						colliderScaleY = 1.0,
						colliderScaleZ = 1.0,
						isTrigger = false,
						mass = 1.0,
						friction = 0.0,
						damping = 0.0,
						bounciness = 0.0,
						colShape = 0,
						movementType = 2
					},
					MeshRenderer = {
						meshName  = "models/crab/Crab.mesh",
						initRotationY = 180.0
					},
					Animator = { 
						initAnim = "Walk",
					},
					SideMovement = {
						movementDistance = 6.0,
						initDirX = -1.0,
						initDirY = 0.0,
						initDirZ = 0.0,
						movSpd = 1.0,
						rotSpd = 90.0
					},
					ContactDamage = {
						damage = 1
					}

				},
			},

			-- Corals
			{
				components = {
					Transform = {
						positionX = -2.8,
						positionY = 26.627,
						positionZ = -9.27,
						scaleX = 0.50,
						scaleY = 0.50,
						scaleZ = 0.50,
						rotationX = 0.0,
						rotationY = 0.0,
						rotationZ = 0.0
					},
					RigidBody = {
						colliderScaleX = 1.0,
						colliderScaleY = 1.0,
						colliderScaleZ = 1.0,
						isTrigger = false,
						mass = 1.0,
						friction = 0.0,
						damping = 0.0,
						bounciness = 0.0,
						colShape = 4,
						movementType = 2,
						file= "models/corals/Coral1.obj"
					},
					MeshRenderer = {
						meshName  = "models/corals/Coral1.mesh",
					},
					ContactDamage = {
						damage = 1
					}

				},
			},
			{
				components = {
					Transform = {
						positionX = 2.42,
						positionY = 27.109,
						positionZ = -9.27,
						scaleX = 0.50,
						scaleY = 0.50,
						scaleZ = 0.50,
						rotationX = 0.0,
						rotationY = 0.0,
						rotationZ = 0.0
					},
					RigidBody = {
						colliderScaleX = 1.0,
						colliderScaleY = 1.0,
						colliderScaleZ = 1.0,
						isTrigger = false,
						mass = 1.0,
						friction = 0.0,
						damping = 0.0,
						bounciness = 0.0,
						colShape = 4,
						movementType = 2,
						file= "models/corals/Coral5.obj"
					},
					MeshRenderer = {
						meshName  = "models/corals/Coral5.mesh",
					},
					ContactDamage = {
						damage = 1
					}

				},
			},
			{
				components = {
					Transform = {
						positionX = -2.62,
						positionY = 20.103,
						positionZ = -28.488,
						scaleX = 0.55,
						scaleY = 0.55,
						scaleZ = 0.55,
						rotationX = 0.0,
						rotationY = 0.0,
						rotationZ = 0.0
					},
					RigidBody = {
						colliderScaleX = 1.0,
						colliderScaleY = 1.0,
						colliderScaleZ = 1.0,
						isTrigger = false,
						mass = 1.0,
						friction = 0.0,
						damping = 0.0,
						bounciness = 0.0,
						colShape = 4,
						movementType = 2,
						file= "models/corals/Coral4.obj"
					},
					MeshRenderer = {
						meshName  = "models/corals/Coral4.mesh",
					},
					ContactDamage = {
						damage = 1
					}

				},
			},
			{
				components = {
					Transform = {
						positionX = -2.655,
						positionY = 20.1,
						positionZ = -29.99,
						scaleX = 0.55,
						scaleY = 0.55,
						scaleZ = 0.55,
						rotationX = 0.0,
						rotationY = 0.0,
						rotationZ = 0.0
					},
					RigidBody = {
						colliderScaleX = 1.0,
						colliderScaleY = 1.0,
						colliderScaleZ = 1.0,
						isTrigger = false,
						mass = 1.0,
						friction = 0.0,
						damping = 0.0,
						bounciness = 0.0,
						colShape = 4,
						movementType = 2,
						file= "models/corals/Coral4.obj"
					},
					MeshRenderer = {
						meshName  = "models/corals/Coral4.mesh",
					},
					ContactDamage = {
						damage = 1
					}

				},
			},
			{
				components = {
					Transform = {
						positionX = 2.5,
						positionY = 20.54,
						positionZ = -42.26,
						scaleX = 0.55,
						scaleY = 0.55,
						scaleZ = 0.55,
						rotationX = 0.0,
						rotationY = 0.0,
						rotationZ = 0.0
					},
					RigidBody = {
						colliderScaleX = 1.0,
						colliderScaleY = 1.0,
						colliderScaleZ = 1.0,
						isTrigger = false,
						mass = 1.0,
						friction = 0.0,
						damping = 0.0,
						bounciness = 0.0,
						colShape = 4,
						movementType = 2,
						file= "models/corals/Coral4.obj"
					},
					MeshRenderer = {
						meshName  = "models/corals/Coral4.mesh",
					},
					ContactDamage = {
						damage = 1
					}

				},
			},
			{
				components = {
					Transform = {
						positionX = 2.5,
						positionY = 20.54,
						positionZ = -42.26,
						scaleX = 0.55,
						scaleY = 0.55,
						scaleZ = 0.55,
						rotationX = 0.0,
						rotationY = 0.0,
						rotationZ = 0.0
					},
					RigidBody = {
						colliderScaleX = 1.0,
						colliderScaleY = 1.0,
						colliderScaleZ = 1.0,
						isTrigger = false,
						mass = 1.0,
						friction = 0.0,
						damping = 0.0,
						bounciness = 0.0,
						colShape = 4,
						movementType = 2,
						file= "models/corals/Coral3.obj"
					},
					MeshRenderer = {
						meshName  = "models/corals/Coral3.mesh",
					},
					ContactDamage = {
						damage = 1
					}

				},
			},
			{
				components = {
					Transform = {
						positionX = 1.0,
						positionY = 19.94,
						positionZ = -42.79,
						scaleX = 0.55,
						scaleY = 0.55,
						scaleZ = 0.55,
						rotationX = 0.0,
						rotationY = 0.0,
						rotationZ = 0.0
					},
					RigidBody = {
						colliderScaleX = 1.0,
						colliderScaleY = 1.0,
						colliderScaleZ = 1.0,
						isTrigger = false,
						mass = 1.0,
						friction = 0.0,
						damping = 0.0,
						bounciness = 0.0,
						colShape = 4,
						movementType = 2,
						file= "models/corals/Coral6.obj"
					},
					MeshRenderer = {
						meshName  = "models/corals/Coral6.mesh",
					},
					ContactDamage = {
						damage = 1
					}

				},
			},
			{
				components = {
					Transform = {
						positionX = -2.1,
						positionY = 19.38,
						positionZ = -64.13,
						scaleX = 0.55,
						scaleY = 0.55,
						scaleZ = 0.55,
						rotationX = 0.0,
						rotationY = 0.0,
						rotationZ = 0.0
					},
					RigidBody = {
						colliderScaleX = 1.0,
						colliderScaleY = 1.0,
						colliderScaleZ = 1.0,
						isTrigger = false,
						mass = 1.0,
						friction = 0.0,
						damping = 0.0,
						bounciness = 0.0,
						colShape = 4,
						movementType = 2,
						file= "models/corals/Coral2.obj"
					},
					MeshRenderer = {
						meshName  = "models/corals/Coral2.mesh",
					},
					ContactDamage = {
						damage = 1
					}

				},
			},



			-- Turtles
			{
				components = {
					Transform = {
						positionX = -4.6,
						positionY = 18.889,
						positionZ = -74.21,
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
						movementDistance = 7.0,
						initDirX = 1.0,
						initDirY = 0.0,
						initDirZ = 0.0,
						movSpd = 1.0,
						rotSpd = 90.0
					},
					ContactDamage = {
						damage = 1
					}

				},
			},
			{
				components = {
					Transform = {
						positionX = 5.29,
						positionY = 18.889,
						positionZ = -81.32,
						scaleX = 0.55,
						scaleY = 0.55,
						scaleZ = 0.55,
						rotationX = 0.0,
						rotationY = 90.0,
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
						initRotationY = 90.0,
					},
					Animator = { 
						initAnim = "Swim",
					},
					SideMovement = {
						movementDistance = 7.0,
						initDirX = -1.0,
						initDirY = 0.0,
						initDirZ = 0.0,
						movSpd = 1.0,
						rotSpd = 90.0
					},
					ContactDamage = {
						damage = 1
					}

				},
			},

			{
				components = {
					Transform = {
						positionX = -5.88,
						positionY = 19.72,
						positionZ = -49.83,
						scaleX = 2.0,
						scaleY = 2.0,
						scaleZ = 2.0,
						rotationX = 0.0,
						rotationY = -90.0,
						rotationZ = 0.0
					},
					MeshRenderer = {
						meshName  = "models/eel/Eel.mesh",
					},
					Animator = { 
						initAnim = "Idle.002",
					},
					SideMovement = {
						movementDistance = 9.0,
						initDirX = 0.0,
						initDirY = -1.0,
						initDirZ = 0.0,
						movSpd = 3.0,
						rotSpd = 0.0
					},
				},
				children = {
					{
						components = {
							Transform = {
								positionX = 0.0,
								positionY = 0.65,
								positionZ = -3.41,
								scaleX = 0.19,
								scaleY = 0.3,
								scaleZ = 6.81,
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
								friction = 0.0,
								damping = 0.0,
								bounciness = 0.0,
								colShape = 0,
								movementType = 2
							},
							ContactDamage = {
								damage = 1
							}
						},
					},
					

				}
			},

			{
				components = {
					Transform = {
						positionX = 7.51,
						positionY = 10.72,
						positionZ = -57.02,
						scaleX = 2.0,
						scaleY = 2.0,
						scaleZ = 2.0,
						rotationX = 0.0,
						rotationY = 90.0,
						rotationZ = 0.0
					},
					MeshRenderer = {
						meshName  = "models/eel/Eel.mesh",
					},
					Animator = { 
						initAnim = "Idle.002",
					},
					SideMovement = {
						movementDistance = 9.0,
						initDirX = 0.0,
						initDirY = 1.0,
						initDirZ = 0.0,
						movSpd = 3.0,
						rotSpd = 0.0
					},
				},
				children = {
					{
						components = {
							Transform = {
								positionX = 0.0,
								positionY = 0.65,
								positionZ = -3.41,
								scaleX = 0.19,
								scaleY = 0.3,
								scaleZ = 6.81,
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
								friction = 0.0,
								damping = 0.0,
								bounciness = 0.0,
								colShape = 0,
								movementType = 2
							},
							ContactDamage = {
								damage = 1
							}
						},
					},
					

				}
			},
			
		}

	},
	
	Ship = {
		components = {
			Transform = {
				positionX = 1.24,
				positionY = 43.97,
				positionZ = -132.03,
				scaleX = 6.67,
				scaleY = 6.67,
				scaleZ = 6.67,
				rotationX = 0.0,
				rotationY = -37.08,
				rotationZ = 0.0
			},
			MeshRenderer = {
				meshName  = "models/ship/Ship.mesh"
			},
			KeyFrameAnimator = {
				speed = 2.0,
				duration = 3.0,
				rotKeyX1 = 7.0,
				rotKeyY1 = -37.08,
				rotKeyZ1 = 0.0,
				rotKeyX2 = 0.0,
				rotKeyY2 = -37.08,
				rotKeyZ2 = 0.0,
				rotKeyX3 = -7.0,
				rotKeyY3 = -37.08,
				rotKeyZ3 = 0.0,
				rotKeyX4 = 0.0,
				rotKeyY4 = -37.08,
				rotKeyZ4 = 0.0,
			}
		},
	}


}
