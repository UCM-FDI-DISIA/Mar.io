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
						file = "models/scenario/Stairs.obj"
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
						positionX = 3.0,
						positionY = 26.8,
						positionZ = -13.0,
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
						playbackSpeed = 1.8
					},
					SideMovement = {
						movementDistance = 6.0,
						initDirX = -1.0,
						initDirY = 0.0,
						initDirZ = 0.0,
						movSpd = 3.3,
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
						positionY = 26.8,
						positionZ = -23.0,
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
						playbackSpeed = 1.8
					},
					SideMovement = {
						movementDistance = 6.0,
						initDirX = 1.0,
						initDirY = 0.0,
						initDirZ = 0.0,
						movSpd = 3.3,
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
						positionY = 26.8,
						positionZ = -33.0,
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
						playbackSpeed = 1.8
					},
					SideMovement = {
						movementDistance = 6.0,
						initDirX = -1.0,
						initDirY = 0.0,
						initDirZ = 0.0,
						movSpd = 3.3,
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
						positionX = -2.9,
						positionY = 20.3,
						positionZ = -86.0,
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
						playbackSpeed = 2.5
					},
					SideMovement = {
						movementDistance = 6.1,
						initDirX = 1.0,
						initDirY = 0.0,
						initDirZ = 0.0,
						movSpd = 4.5,
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
						positionY = 20.3,
						positionZ = -90.0,
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
						playbackSpeed = 2.5
					},
					SideMovement = {
						movementDistance = 6.1,
						initDirX = -1.0,
						initDirY = 0.0,
						initDirZ = 0.0,
						movSpd = 4.5,
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
						positionX = -2.9,
						positionY = 20.3,
						positionZ = -94.0,
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
						playbackSpeed = 2.5
					},
					SideMovement = {
						movementDistance = 6.1,
						initDirX = 1.0,
						initDirY = 0.0,
						initDirZ = 0.0,
						movSpd = 4.5,
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
						positionX = -2.3,
						positionY = 27.45,
						positionZ = -6.0,
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
						positionX = 2.3,
						positionY = 27.45,
						positionZ = -7.0,
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
	Coins = {
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
					Transform = {
						positionX = -3.3,
						positionY = 21.2,
						positionZ = -110.2,
						scaleX = 0.9,
						scaleY = 0.9,
						scaleZ = 0.9,
						rotationX = 0.0,
						rotationY = 0.0,
						rotationZ = 0.0
					},
					RigidBody = {
						colliderScaleX = 0.25,
						colliderScaleY = 0.25,
						colliderScaleZ = 0.25,
						isTrigger = false,
						mass = 1.0,
						friction = 1.0,
						damping = 0.4,
						bounciness = 0.0,
						colShape = 0,
						movementType = 1
					},
					MeshRenderer = {
						meshName  = "models/chest/ClosedChest.mesh"
					},
					Chest = { 
						nCoins = 4
					},
					AudioSourceComponent = {
						sourcepath = "coin.mp3"
					}
				}
			},
			{
				components = {
					Transform = {
						positionX = 0.0,
						positionY = 26.8,
						positionZ = -18.0,
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
						isTrigger = true,
						mass = 1.0,
						friction = 1.0,
						damping = 1.0,
						bounciness = 0.0,
						colShape = 0,
						movementType = 1
					},
					MeshRenderer = {
						meshName  = "models/coin/Coin.mesh",
					},
					Coin = { },
					AudioSourceComponent = {
						sourcepath = "coin.mp3"
					},
					SoundObjectDie = {
						is3D = true, 
						routeS = "coin.mp3",
						play = false
					}
				}
			},
			{
				components = {
					Transform = {
						positionX = 0.0,
						positionY = 26.8,
						positionZ = -28.0,
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
						isTrigger = true,
						mass = 1.0,
						friction = 1.0,
						damping = 1.0,
						bounciness = 0.0,
						colShape = 0,
						movementType = 1
					},
					MeshRenderer = {
						meshName  = "models/coin/Coin.mesh",
					},
					Coin = { },
					AudioSourceComponent = {
						sourcepath = "coin.mp3"
					},
					SoundObjectDie = {
						is3D = true, 
						routeS = "coin.mp3",
						play = false
					}
				}
			},
			{
				components = {
					Transform = {
						positionX = 0.0,
						positionY = 26.8,
						positionZ = -43.0,
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
						isTrigger = true,
						mass = 1.0,
						friction = 1.0,
						damping = 1.0,
						bounciness = 0.0,
						colShape = 0,
						movementType = 1
					},
					MeshRenderer = {
						meshName  = "models/coin/Coin.mesh",
					},
					Coin = { },
					AudioSourceComponent = {
						sourcepath = "coin.mp3"
					},
					SoundObjectDie = {
						is3D = true, 
						routeS = "coin.mp3",
						play = false
					}
				}
			}
		}
	}
}