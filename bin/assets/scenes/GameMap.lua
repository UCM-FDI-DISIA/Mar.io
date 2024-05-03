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
				mainLight = true
			}
		}
	},
	Player = {
		components = {
			Transform = {
				positionX = 0,
				positionY = 27.45,
				positionZ = -5.0,
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
				rotationY = 90.0,
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
				},
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
					},
				},
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
					},
				},
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
					},
				},
			},


			Collider1 = {
				components = {
					Transform = {
						positionX = 6.31,
						positionY = 22.37,
						positionZ = 0.0,
						scaleX = 22.37,
						scaleY = 7.98,
						scaleZ = 17.44,
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
	}
	

	



}
