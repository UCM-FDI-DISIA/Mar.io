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
				mainLight = true,
				powerScale = 1.5,
				colorR = 0.2235294118,
				colorG = 0.4117647059,
				colorB = 0.7215686275
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
						textColorR = 0.25,
						textColorG = 0.25,
						textColorB = 0.25,
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
						textColorR = 0.25,
						textColorG = 0.25,
						textColorB = 0.25,
						textColorA = 1.0
						
					}
				
				}
			},
		}
	},

	Player = {
		components = {
			Transform = {
				positionX = 0.0,
				positionY = 27.45,
				positionZ = -5.0,
				scaleX = 1.0,
				scaleY = 1.0,
				scaleZ = 1.0,
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
				colliderScaleY = 0.8,
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
			{
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
								positionY = 20.0,
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
								positionY = 20.0,
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
								rotationY = 11.0,
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
						colliderScaleX = 0.5,
						colliderScaleY = 2.0,
						colliderScaleZ = 0.5,
						isTrigger = false,
						mass = 1.0,
						friction = 0.0,
						damping = 0.0,
						bounciness = 0.0,
						colShape = 0,
						movementType = 2
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
						colliderScaleX = 1.2,
						colliderScaleY = 2.0,
						colliderScaleZ = 1.2,
						isTrigger = false,
						mass = 1.0,
						friction = 0.0,
						damping = 0.0,
						bounciness = 0.0,
						colShape = 0,
						movementType = 2
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
						colliderScaleY = 1.5,
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
						colliderScaleY = 1.5,
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
						colliderScaleY = 1.5,
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
						colliderScaleY = 1.5,
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
						colliderScaleX = 0.7,
						colliderScaleY = 2.0,
						colliderScaleZ = 0.7,
						isTrigger = false,
						mass = 1.0,
						friction = 0.0,
						damping = 0.0,
						bounciness = 0.0,
						colShape = 0,
						movementType = 2
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
						colliderScaleX = 0.7,
						colliderScaleY = 2.0,
						colliderScaleZ = 0.7,
						isTrigger = false,
						mass = 1.0,
						friction = 0.0,
						damping = 0.0,
						bounciness = 0.0,
						colShape = 0,
						movementType = 2
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
		},
	}


}
