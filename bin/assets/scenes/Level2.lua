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
			},
			
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
			livesHUd = {
				components = {
					Transform = {
						positionX = WINDOW_WIDTH/10 - 66.0,
						positionY = WINDOW_HEIGHT/10,
						positionZ = 0.0,
						scaleX = 180.0,
						scaleY = 180.0,
						scaleZ = 0.5,
						rotationX = 0.0,
						rotationY = 0.0,
						rotationZ = 0.0
					},
					Image = {
						imagePath = "raccoonface.png"
					},
				}
			},
			livesText = {
				components = {
					Transform = {
						positionX = WINDOW_WIDTH/9 + 10,
						positionY = WINDOW_HEIGHT/10
					},
					Text = {
						text = "X0",
						textSize = 38.0,
						textFontName = "AGENCYB.TTF",
						textColorR = 0.75,
						textColorG = 0.75,
						textColorB = 0.75,
						textColorA = 1.0
					}
				
				}
			},
			coinsHUd = {
				components = {
					Transform = {
						positionX = WINDOW_WIDTH/1.15 + 90.0,
						positionY = WINDOW_HEIGHT/10,
						positionZ = 0.0,
						scaleX = 155.0,
						scaleY = 155.0,
						scaleZ = 0.5,
						rotationX = 0.0,
						rotationY = 0.0,
						rotationZ = 0.0
					},
					Image = {
						imagePath = "hudcoin.png"
					}
				}
			},
			coinsText = {
				components = {
					Transform = {
						positionX = WINDOW_WIDTH/1.15,
						positionY = WINDOW_HEIGHT/10
					},
					Text = {
						text = "0X",
						textSize = 38.0,
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
			 	-- planeName = "SkyBox",
			 	-- materialName = "sky",
			 	-- distC = 100.0,
			 	-- orderC = true
			-- }
		}
	},

	Goal = {
		components = {
			Transform = {
				positionX = 0.0,
				positionY = 35.45,
				positionZ = -129.0,
				scaleX = 5.0,
				scaleY = 5.0,
				scaleZ = 5.0,
				rotationX = 0.0,
				rotationY = 0.0,
				rotationZ = 0.0
			},

			RigidBody = {
				colliderScaleX = 1.0,
				colliderScaleY = 1.0,
				colliderScaleZ = 1.0,
				isTrigger = true,
				mass = 50.0,
				friction = 1.0,
				damping = 0.0,
				bounciness = 2.0,
				colShape = 0,
				movementType = 1
			}
			,
			Goal = {}
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
			RigidBody = {
				colliderScaleX = 0.25,
				colliderScaleY = 0.7,
				colliderScaleZ = 0.25,
				isTrigger = false,
				mass = 50.0,
				friction = 0.5,
				damping = 0.0,
				bounciness = 2.0,
				colShape = 0,
				movementType = 0
			},
			MeshRenderer = {
				meshName  = "models/pirateRaccoon/PirateRacoon.mesh",
			},
			Animator = { 
				initAnim = "Idle"
			},
			PlayerMovementController = {
			},
			PlayerSetting = {
			},
			FallDamage = {
			},
			Health = {
				currHealth = 1,
			},
			Score = {
			},
			AudioSourceComponent = {
				sourcepath = "jump.mp3"
			},
			AudioSourceComponent = {
				sourcepath = "footstep.mp3"
			},	
			AudioSourceComponent = {
				sourcepath = "hurt.mp3"
			},			
			AudioListenerComponent = {},
			ParticleSystemComponent = {
				templateName = "aureolaPS",
			}
		},
		children = {
			{
				components = {
					Transform = {
						positionX = 0.0,
						positionY = 0.0,
						positionZ = 0.6,
						scaleX = 1.0,
						scaleY = 1.0,
						scaleZ = 1.0,
						rotationX = 0.0,
						rotationY = 1.0,
						rotationZ = 0.0
					},
					RigidBody = {
						colliderScaleX = 0.25,
						colliderScaleY = 0.6,
						colliderScaleZ = 0.25,
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
					},
					AudioSourceComponent = {
						sourcepath = "fist.mp3"
					}
				}
			},
			{
				components = {
					Transform = {
						positionX = 0.0,
						positionY = -0.75,
						positionZ = 0.0,
						scaleX = 1.0,
						scaleY = 1.0,
						scaleZ = 1.0,
						rotationX = 0.0,
						rotationY = 1.0,
						rotationZ = 0.0
					},
					RigidBody = {
						colliderScaleX = 0.15,
						colliderScaleY = 0.15,
						colliderScaleZ = 0.15,
						isTrigger = true,
						mass = 0.0,
						friction = 1.0,
						damping = 0.4,
						bounciness = 0.0,
						colShape = 0,
						movementType = 2
					},
					Jump = {
					},
					AudioSourceComponent = {
						sourcepath = "fist.mp3"
					}
				}
			},
			PlayerLight = {
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
				LightSpotComp = {
					directionX = 0.0,
					directionY = -1.0,
					directionZ = 0.0,
					mainLight = false,
					colorR = 0.6,
					colorG = 0.5,
					colorB = 0.7,
					colorA = 1.0,
					powerScale = 50.0,
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
	
			Platform1 = {
				components = {
					Transform = {
						positionX = 0.0,
						positionY = 0.0,
						positionZ = 0.0,
						scaleX = 3.0,
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
						positionY = 3.0,
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
						file = "models/scenario/Stairs.obj"
					}
				}
				

			},


			Platform3 = {
				components = {
					Transform = {
						positionX = 0.0,
						positionY = 3.0,
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
						file = "models/scenario/Platform3.obj"
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
					},
					EnemyHealth = {
					}
				},
			},
			{
				components = {
					Transform = {
						positionX = 3.0,
						positionY = 26.81,
						positionZ = -15.45,
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
						initRotationY = 0.0
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
					},
					EnemyHealth = {
					}
				},
			},
			{
				components = {
					Transform = {
						positionX = -3.0,
						positionY = 26.81,
						positionZ = -18.45,
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
					},
					EnemyHealth = {
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
					},
					EnemyHealth = {
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
						file = "models/corals/Coral1.obj"
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
						file = "models/corals/Coral5.obj"
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
						file = "models/corals/Coral4.obj"
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
						file = "models/corals/Coral4.obj"
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
						file = "models/corals/Coral4.obj"
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
						file = "models/corals/Coral3.obj"
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
						file = "models/corals/Coral6.obj"
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
						file = "models/corals/Coral2.obj"
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
						positionX = 3.0,
						positionY = 20.0,
						positionZ = -74.21,
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
					},
					Animator = { 
						initAnim = "Swim",
					},
					SideMovement = {
						movementDistance = 4.0,
						initDirX = -1.0,
						initDirY = 0.0,
						initDirZ = 0.0,
						movSpd = 1.0,
						rotSpd = 90.0
					},
					ContactDamage = {
						damage = 1
					},
					EnemyHealth = {
					}
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
			},
			{
				components = {
					Transform = {
						positionX = -3.0,
						positionY = 20.0,
						positionZ = -81.32,
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
						initRotationY = 90.0,
					},
					Animator = { 
						initAnim = "Swim",
					},
					SideMovement = {
						movementDistance = 4.0,
						initDirX = 1.0,
						initDirY = 0.0,
						initDirZ = 0.0,
						movSpd = 1.0,
						rotSpd = 90.0
					},
					ContactDamage = {
						damage = 1
					},
					EnemyHealth = {
					}
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
	},
	{
		components = {
			Transform = {
				positionX = 0.0,
				positionY = 27.45,
				positionZ = -7.0,
				scaleX = 0.3,
				scaleY = 0.3,
				scaleZ = 0.3,
				rotationX = 0.0,
				rotationY = 0.0,
				rotationZ = 0.0
			},
			RigidBody = {
				colliderScaleX = 1.0,
				colliderScaleY = 1.0,
				colliderScaleZ = 0.8,
				isTrigger = true,
				mass = 1.0,
				friction = 1.0,
				damping = 0.0,
				bounciness = 0.0,
				colShape = 0,
				movementType = 1
			},
			MeshRenderer = {
				meshName  = "models/heart/heart.mesh",
				materialName = "heart",
				initRotationX = -90.0
			},
			HeartPowerUp = { },
			AudioSourceComponent = {
				sourcepath = "heal.mp3"
			},
			SoundObjectDie = {
				is3D = true, 
				routeS = "heal.mp3",
				play = false
			}
		}
	},
	{
		components = {
			Transform = {
				positionX = 0.0,
				positionY = 27.0,
				positionZ = -38.0,
				scaleX = 1.0,
				scaleY = 1.0,
				scaleZ = 1.0,
				rotationX = 0.0,
				rotationY = 0.0,
				rotationZ = 0.0
			},
			RigidBody = {
				colliderScaleX = 0.5,
				colliderScaleY = 0.5,
				colliderScaleZ = 0.5,
				isTrigger = true,
				mass = 1.0,
				friction = 1.0,
				damping = 0.0,
				bounciness = 0.0,
				colShape = 0,
				movementType = 1
			},
			MeshRenderer = {
				meshName  = "models/bubble/Sphere1000.mesh",
				materialName = "bubble",
				initRotationX = -90.0
			},
			InvincibilityPowerUp = { },
			AudioSourceComponent = {
				sourcepath = "invincibility.mp3"
			},
			SoundObjectDie = {
				is3D = true, 
				routeS = "invincibility.mp3",
				play = false
			}
		}
	},


}
