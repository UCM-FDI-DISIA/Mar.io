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
				positionX = 0.0,
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
				children = {
					-- Floor1
					{
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
							},
						}
					},
					
					-- Floor2
					{
						components = {
							Transform = {
								positionX = 18.56,
								positionY = 20.02,
								positionZ = 0.0,
								scaleX = 9.85,
								scaleY = 7.98,
								scaleZ = 17.44,
								rotationX = 0.0,
								rotationY = 0.0,
								rotationZ = -45.69
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
							},
						}
					},

					-- Floor3
					{
						components = {
							Transform = {
								positionX = 29.98,
								positionY = 15.86,
								positionZ = 0.0,
								scaleX = 23.3,
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
							},
						}
					},

					-- Floor4
					{
						components = {
							Transform = {
								positionX = 42.91,
								positionY = 15.43,
								positionZ = 0.0,
								scaleX = 4.53,
								scaleY = 7.98,
								scaleZ = 17.44,
								rotationX = 0.0,
								rotationY = 0.0,
								rotationZ = -12.66
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
							},
						}
					},

					-- Wall1
					{
						components = {
							Transform = {
								positionX = 20.0,
								positionY = 24.3,
								positionZ = 6.33,
								scaleX = 52.1,
								scaleY = 15.9,
								scaleZ = 4.1,
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
							},
						}
					},

					-- Wall2
					{
						components = {
							Transform = {
								positionX = 20.0,
								positionY = 24.3,
								positionZ = -6.33,
								scaleX = 52.1,
								scaleY = 15.9,
								scaleZ = 4.1,
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
							},
						}
					},
					
					-- Wall3
					{
						components = {
							Transform = {
								positionX = -4.3,
								positionY = 24.3,
								positionZ = 0.0,
								scaleX = 5.1,
								scaleY = 15.9,
								scaleZ = 18.5,
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
							},
						}
					},

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
					},
				},
				children = {
					{
						components = {
							Transform = {
								positionX = 53.65,
								positionY = 18.19,
								positionZ = 0.0,
								scaleX = 3.86,
								scaleY = 1.11,
								scaleZ = 4.14,
								rotationX = 0.0,
								rotationY = 15.2,
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
							},
						}
					},
				
					{
						components = {
							Transform = {
								positionX = 103.13,
								positionY = 18.46,
								positionZ = 0.0,
								scaleX = 3.86,
								scaleY = 1.11,
								scaleZ = 4.14,
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
							},
						}
					},






					{
						components = {
							Transform = {
								positionX = 111.33,
								positionY = 20.08,
								positionZ = -3.56,
								scaleX = 3.86,
								scaleY = 1.11,
								scaleZ = 4.14,
								rotationX = 0.0,
								rotationY = 68.8,
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
							},
						}
					},

					{
						components = {
							Transform = {
								positionX = 111.7,
								positionY = 21.59,
								positionZ = 2.85,
								scaleX = 3.86,
								scaleY = 1.11,
								scaleZ = 4.14,
								rotationX = 0.0,
								rotationY = 48.8,
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
							},
						}
					},

					{
						components = {
							Transform = {
								positionX = 113.43,
								positionY = 23.55,
								positionZ = 8.77,
								scaleX = 3.86,
								scaleY = 1.11,
								scaleZ = 4.14,
								rotationX = 0.0,
								rotationY = 31.9,
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
							},
						}
					},

					{
						components = {
							Transform = {
								positionX = 118.37,
								positionY = 24.64,
								positionZ = 12.5,
								scaleX = 3.86,
								scaleY = 1.11,
								scaleZ = 4.14,
								rotationX = 0.0,
								rotationY = -0.8,
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
							},
						}
					},

					{
						components = {
							Transform = {
								positionX = 124.44,
								positionY = 26.74,
								positionZ = 13.43,
								scaleX = 3.86,
								scaleY = 1.11,
								scaleZ = 4.14,
								rotationX = 0.0,
								rotationY = -10.72,
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
							},
						}
					},

					{
						components = {
							Transform = {
								positionX = 130.74,
								positionY = 28.29,
								positionZ = 13.81,
								scaleX = 3.86,
								scaleY = 1.11,
								scaleZ = 4.14,
								rotationX = 0.0,
								rotationY = -22.8,
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
							},
						}
					},

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
					},
				},
				children = {
					-- Floor1
					{
						components = {
							Transform = {
								positionX = 62.77,
								positionY = 14.13,
								positionZ = 0.0,
								scaleX = 2.43,
								scaleY = 8.0,
								scaleZ = 17.44,
								rotationX = 0.0,
								rotationY = 0.0,
								rotationZ = 17.5
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
							},
						}
					},
					
					-- Floor2
					{
						components = {
							Transform = {
								positionX = 79.65,
								positionY = 14.32,
								positionZ = 0.0,
								scaleX = 34.0,
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
							},
						}
					},

					-- Floor3
					{
						components = {
							Transform = {
								positionX = 96.6,
								positionY = 14.13,
								positionZ = 0.0,
								scaleX = 2.43,
								scaleY = 8.0,
								scaleZ = 17.44,
								rotationX = 0.0,
								rotationY = 0.0,
								rotationZ = -17.5
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
							},
						}
					},

					-- Wall1
					{
						components = {
							Transform = {
								positionX = 66.53,
								positionY = 15.3,
								positionZ = -6.54,
								scaleX = 12.2,
								scaleY = 16.6,
								scaleZ = 4.55,
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
							},
						}
					},
					-- Wall2
					{
						components = {
							Transform = {
								positionX = 87.26,
								positionY = 15.3,
								positionZ = -6.54,
								scaleX = 23.3,
								scaleY = 16.6,
								scaleZ = 4.55,
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
							},
						}
					},
					-- Wall3
					{
						components = {
							Transform = {
								positionX = 70.08,
								positionY = 15.3,
								positionZ = 7.16,
								scaleX = 19.2,
								scaleY = 16.6,
								scaleZ = 4.55,
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
							},
						}
					},
					-- Wall4
					{
						components = {
							Transform = {
								positionX = 90.88,
								positionY = 15.3,
								positionZ = 7.16,
								scaleX = 16.0,
								scaleY = 16.6,
								scaleZ = 4.55,
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
							},
						}
					},

					-- Hole1
					{
						components = {
							Transform = {
								positionX = 74.18,
								positionY = 22.0,
								positionZ = -6.54,
								scaleX = 4.3,
								scaleY = 4.4,
								scaleZ = 4.55,
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
							},
						}
					},

					-- Hole2
					{
						components = {
							Transform = {
								positionX = 81.37,
								positionY = 22.0,
								positionZ = 7.16,
								scaleX = 4.3,
								scaleY = 4.4,
								scaleZ = 4.55,
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
							},
						}
					},
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
					},
				},
				children = {
					{
						components = {
							Transform = {
								positionX = 129.5,
								positionY = 17.26,
								positionZ = 0.0,
								scaleX = 18.7,
								scaleY = 28.5,
								scaleZ = 18.5,
								rotationX = 0.0,
								rotationY = -5.3,
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
							},
						}
					},
					{
						components = {
							Transform = {
								positionX = 118.85,
								positionY = 29.52,
								positionZ = 1.31,
								scaleX = 3.96,
								scaleY = 2.8,
								scaleZ = 11.6,
								rotationX = 0.0,
								rotationY = -5.3,
								rotationZ = 17.7
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
							},
						}
					},
					{
						components = {
							Transform = {
								positionX = 128.55,
								positionY = 29.79,
								positionZ = 9.24,
								scaleX = 17.32,
								scaleY = 2.8,
								scaleZ = 2.0,
								rotationX = 35.66,
								rotationY = -5.3,
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
							},
						}
					},
					{
						components = {
							Transform = {
								positionX = 122.89,
								positionY = 15.62,
								positionZ = 9.3,
								scaleX = 10.0,
								scaleY = 28.5,
								scaleZ = 9.0,
								rotationX = -12.2,
								rotationY = -13.8,
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
							},
						}
					},
					{
						components = {
							Transform = {
								positionX = 132.03,
								positionY = 15.62,
								positionZ = 10.72,
								scaleX = 10.0,
								scaleY = 28.5,
								scaleZ = 9.0,
								rotationX = -12.2,
								rotationY = -4.8,
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
							},
						}
					},
					{
						components = {
							Transform = {
								positionX = 117.12,
								positionY = 15.59,
								positionZ = 4.49,
								scaleX = 10.0,
								scaleY = 28.5,
								scaleZ = 8.96,
								rotationX = 0.0,
								rotationY = 11,
								rotationZ = -13.46
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
							},
						}
					},
					{
						components = {
							Transform = {
								positionX = 117.17,
								positionY = 15.6,
								positionZ = -2.29,
								scaleX = 10.0,
								scaleY = 28.5,
								scaleZ = 8.96,
								rotationX = 0.0,
								rotationY = -11.4,
								rotationZ = -13.46
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
							},
						}
					},
				}
			},
		}
	}
	

	



}
