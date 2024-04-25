scene  = {
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
					imagePath="textures/raccoonface.png"
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
					imagePath="textures/hudcoin.png"
				}
			}

		},

		{
			components = {
				Transform = {
					positionX = 0.0,
					positionY = 0.0,
					positionZ = 0.0,
					scaleX = 0.5,
					scaleY = 0.5,
					scaleZ = 0.5,
					rotationX = 0.0,
					rotationY = 0.0,
					rotationZ = 0.0
				}
			},
			children = {
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
							positionY = 15.0,
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
							colliderScaleX = 1.0,
							colliderScaleY = 2.5,
							colliderScaleZ = 1.0,
							isTrigger = false,
							mass = 10.0,
							friction = 0.6,
							damping = 0.4,
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
				{
					components = {
						Transform = {
							positionX = 0.0,
							positionY = -37.2,
							positionZ = -82.19,
							scaleX = 20.0,
							scaleY = 20.0,
							scaleZ = 40.0,
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
				},
				{
					components = {
						Transform = {
							positionX = 0.0,
							positionY = -32.9,
							positionZ = -172.5,
							scaleX = 20.0,
							scaleY = 20.0,
							scaleZ = 40.0,
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
				},
				{
					components = {
						Transform = {
							positionX = 0.0,
							positionY = -11.2,
							positionZ = -332.6,
							scaleX = 20.0,
							scaleY = 20.0,
							scaleZ = 40.0,
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
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -8.34,
									positionY = 3.3,
									positionZ = -17.98,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 7.3,
									positionY = 13.0,
									positionZ = -96.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -3.7,
									positionY = 9.4,
									positionZ = -83.8,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 8.1,
									positionY = 6.4,
									positionZ = -71.3,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 10.6,
									positionY = 6.8,
									positionZ = -43.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 2.62,
									positionY = -4.3,
									positionZ = -163.7,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -8.2,
									positionY = -4.3,
									positionZ = -173.9,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 5.6,
									positionY = -4.3,
									positionZ = -193.7,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 18.7,
									positionY = -14.4,
									positionZ = -245.9,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -29.3,
									positionY = -5.8,
									positionZ = -275.9,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
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
								Transform = {
									positionX = 40.0,
									positionY = -68.8,
									positionZ = -497.6,
									scaleX = 10.0,
									scaleY = 10.0,
									scaleZ = 10.0,
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
						},
						{
							components = {
								Transform = {
									positionX = 0.0,
									positionY = -40.7,
									positionZ = -440.0,
									scaleX = 50.0,
									scaleY = 50.0,
									scaleZ = 50.0,
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
						},
						{
							components = {
								Transform = {
									positionX = 0.0,
									positionY = 23.2,
									positionZ = -566.0,
									scaleX = 50.0,
									scaleY = 10.0,
									scaleZ = 50.0,
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
						},
						{
							components = {
								Transform = {
									positionX = 0.0,
									positionY = 102.0,
									positionZ = -543.3,
									scaleX = 50.0,
									scaleY = 10.0,
									scaleZ = 50.0,
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
						},
						{
							components = {
								Transform = {
									positionX = 0.0,
									positionY = -83.6,
									positionZ = -542.4,
									scaleX = 50.0,
									scaleY = 10.0,
									scaleZ = 50.0,
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
						},
						{
							components = {
								Transform = {
									positionX = -20.0,
									positionY = -24.4,
									positionZ = -499.8,
									scaleX = 10.0,
									scaleY = 10.0,
									scaleZ = 10.0,
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
						},
						{
							components = {
								Transform = {
									positionX = 0.2,
									positionY = -39.7,
									positionZ = -499.8,
									scaleX = 10.0,
									scaleY = 10.0,
									scaleZ = 10.0,
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
						},
						{
							components = {
								Transform = {
									positionX = 20.0,
									positionY = -54.7,
									positionZ = -499.3,
									scaleX = 10.0,
									scaleY = 10.0,
									scaleZ = 10.0,
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
						},
						{
							components = {
								Transform = {
									positionX = -40.0,
									positionY = -9.3,
									positionZ = -499.6,
									scaleX = 10.0,
									scaleY = 10.0,
									scaleZ = 10.0,
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
								Transform = {
									positionX = 0.0,
									positionY = -14.7,
									positionZ = -82.3,
									scaleX = 0.42,
									scaleY = 0.14,
									scaleZ = 0.81,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 47.5,
									colliderScaleY = 7.0,
									colliderScaleZ = 47.5,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/sand/sand.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = 0.0,
									positionY = 0.0,
									positionZ = -15.2,
									scaleX = 0.42,
									scaleY = 0.14,
									scaleZ = 0.81,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 47.5,
									colliderScaleY = 7.0,
									colliderScaleZ = 47.5,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/sand/sand.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = 0.0,
									positionY = -11.5,
									positionZ = -172.8,
									scaleX = 0.42,
									scaleY = 0.14,
									scaleZ = 0.81,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 47.5,
									colliderScaleY = 7.0,
									colliderScaleZ = 47.5,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/sand/sand.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = 0.0,
									positionY = 8.5,
									positionZ = -332.8,
									scaleX = 0.42,
									scaleY = 0.14,
									scaleZ = 0.81,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 47.5,
									colliderScaleY = 7.0,
									colliderScaleZ = 47.5,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/sand/sand.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = 0.0,
									positionY = 9.6,
									positionZ = -440.6,
									scaleX = 1.0,
									scaleY = 0.14,
									scaleZ = 1.0,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 47.5,
									colliderScaleY = 7.0,
									colliderScaleZ = 47.5,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/sand/sand.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = 0.0,
									positionY = 33.5,
									positionZ = -566.1,
									scaleX = 1.0,
									scaleY = 0.14,
									scaleZ = 1.0,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 47.5,
									colliderScaleY = 7.0,
									colliderScaleZ = 47.5,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/sand/sand.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = 0.0,
									positionY = -72.7,
									positionZ = -542.7,
									scaleX = 1.0,
									scaleY = 0.14,
									scaleZ = 1.0,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 47.5,
									colliderScaleY = 7.0,
									colliderScaleZ = 47.5,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/sand/sand.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = 0.0,
									positionY = 114.3,
									positionZ = -544.4,
									scaleX = 1.0,
									scaleY = 0.14,
									scaleZ = 1.0,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 47.5,
									colliderScaleY = 7.0,
									colliderScaleZ = 47.5,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/sand/sand.mesh"
								}
							}
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
								Transform = {
									positionX = 7.49,
									positionY = 2.99,
									positionZ = -70.17,
									scaleX = 0.1,
									scaleY = 0.1,
									scaleZ = 0.1,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
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
						{
							components = {
								Transform = {
									positionX = -6.02,
									positionY = 6.02,
									positionZ = -82.87,
									scaleX = 0.1,
									scaleY = 0.1,
									scaleZ = 0.1,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
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
						{
							components = {
								Transform = {
									positionX = 7.25,
									positionY = 9.21,
									positionZ = -96.47,
									scaleX = 0.1,
									scaleY = 0.1,
									scaleZ = 0.1,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
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
						{
							components = {
								Transform = {
									positionX = 19.42,
									positionY = -3.66,
									positionZ = -223.33,
									scaleX = 0.1,
									scaleY = 0.1,
									scaleZ = 0.1,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = -4.7,
									positionY = -15.6,
									positionZ = -223.33,
									scaleX = 0.1,
									scaleY = 0.1,
									scaleZ = 0.1,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = 19.42,
									positionY = -18.93,
									positionZ = -248.0,
									scaleX = 0.1,
									scaleY = 0.1,
									scaleZ = 0.1,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = -17.6,
									positionY = -6.4,
									positionZ = -223.33,
									scaleX = 0.1,
									scaleY = 0.1,
									scaleZ = 0.1,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = 22.5,
									positionY = 5.11,
									positionZ = -276.3,
									scaleX = 0.1,
									scaleY = 0.1,
									scaleZ = 0.1,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = -1.6,
									positionY = -11.3,
									positionZ = -259.5,
									scaleX = 0.1,
									scaleY = 0.1,
									scaleZ = 0.1,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = 2.8,
									positionY = -10.1,
									positionZ = -240.6,
									scaleX = 0.1,
									scaleY = 0.1,
									scaleZ = 0.1,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = -22.4,
									positionY = 0.1,
									positionZ = -248.2,
									scaleX = 0.1,
									scaleY = 0.1,
									scaleZ = 0.1,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = -29.4,
									positionY = -9.0,
									positionZ = -276.2,
									scaleX = 0.1,
									scaleY = 0.1,
									scaleZ = 0.1,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = -0.1,
									positionY = -3.9,
									positionZ = -282.8,
									scaleX = 0.1,
									scaleY = 0.1,
									scaleZ = 0.1,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
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
						{
							components = {
								Transform = {
									positionX = 22.1,
									positionY = 5.4,
									positionZ = -282.8,
									scaleX = 0.1,
									scaleY = 0.1,
									scaleZ = 0.1,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								}
							}
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
								Transform = {
									positionX = -60.81,
									positionY = 17.6,
									positionZ = -415.06,
									scaleX = 0.2,
									scaleY = 0.2,
									scaleZ = 0.2,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = -81.75,
									positionY = 27.87,
									positionZ = -415.06,
									scaleX = 0.2,
									scaleY = 0.2,
									scaleZ = 0.2,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = -81.75,
									positionY = 39.95,
									positionZ = -437.03,
									scaleX = 0.2,
									scaleY = 0.2,
									scaleZ = 0.2,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = -59.85,
									positionY = 52.99,
									positionZ = -437.03,
									scaleX = 0.2,
									scaleY = 0.2,
									scaleZ = 0.2,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = -61.7,
									positionY = 66.8,
									positionZ = -452.5,
									scaleX = 0.2,
									scaleY = 0.2,
									scaleZ = 0.2,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = -81.5,
									positionY = 81.8,
									positionZ = -452.5,
									scaleX = 0.2,
									scaleY = 0.2,
									scaleZ = 0.2,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = -81.5,
									positionY = 93.8,
									positionZ = -477.0,
									scaleX = 0.2,
									scaleY = 0.2,
									scaleZ = 0.2,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = -61.4,
									positionY = 104.7,
									positionZ = -477.0,
									scaleX = 0.2,
									scaleY = 0.2,
									scaleZ = 0.2,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 50.0,
									colliderScaleY = 10.0,
									colliderScaleZ = 50.0,
									isTrigger = false,
									mass = 1.0,
									friction = 0.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								MeshRenderer = {
									meshName  = "models/blocks/rock/rock.mesh"
								}
							}
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
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 26.04,
									positionY = 118.0,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 34.1,
									positionY = 123.36,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 35.79,
									positionY = 118.0,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -22.09,
									positionY = 123.64,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -20.4,
									positionY = 118.0,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -30.15,
									positionY = 118.0,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -28.16,
									positionY = 123.3,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -25.22,
									positionY = 130.0,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 15.45,
									positionY = 123.66,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 16.88,
									positionY = 128.52,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 16.84,
									positionY = 118.89,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 21.15,
									positionY = 118.11,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 21.27,
									positionY = 130.0,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 3.37,
									positionY = 126.7,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 7.27,
									positionY = 130.0,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 3.39,
									positionY = 122.29,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -2.93,
									positionY = 121.63,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -15.82,
									positionY = 130.0,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -15.34,
									positionY = 118.0,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -10.94,
									positionY = 130.0,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -15.42,
									positionY = 123.92,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -9.05,
									positionY = 125.74,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -11.07,
									positionY = 122.58,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -2.93,
									positionY = 125.78,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -2.93,
									positionY = 118.0,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -2.93,
									positionY = 130.0,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -36.5,
									positionY = 124.36,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -36.69,
									positionY = 129.84,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -36.5,
									positionY = 118.0,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -32.47,
									positionY = 130.0,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = -41.26,
									positionY = 130.0,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 10.41,
									positionY = 122.2,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 4.65,
									positionY = 118.0,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 10.38,
									positionY = 126.45,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 9.13,
									positionY = 118.0,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 30.97,
									positionY = 130.0,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/coin/coin.mesh"
								},
								Transform = {
									positionX = 27.36,
									positionY = 123.62,
									positionZ = -550.0,
									scaleX = 0.5,
									scaleY = 0.5,
									scaleZ = 0.5,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 4.0,
									colliderScaleY = 4.0,
									colliderScaleZ = 2.0,
									isTrigger = true,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Coin = {
								}
							}
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
									meshName  = "models/chest/cofre2.mesh"
								},
								Transform = {
									positionX = 0.0,
									positionY = -9.8,
									positionZ = -56.12,
									scaleX = 1.0,
									scaleY = 1.0,
									scaleZ = 1.0,
									rotationX = 0.0,
									rotationY = 1.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 3.7,
									colliderScaleY = 3.0,
									colliderScaleZ = 1.7,
									isTrigger = false,
									mass = 1.0,
									friction = 1.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Chest = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/chest/cofre2.mesh"
								},
								Transform = {
									positionX = 0.0,
									positionY = 5.3,
									positionZ = -45.6,
									scaleX = 1.0,
									scaleY = 1.0,
									scaleZ = 1.0,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 3.7,
									colliderScaleY = 3.0,
									colliderScaleZ = 1.7,
									isTrigger = false,
									mass = 1.0,
									friction = 1.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Chest = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/chest/cofre2.mesh"
								},
								Transform = {
									positionX = -18.37,
									positionY = -68.01,
									positionZ = -547.56,
									scaleX = 1.0,
									scaleY = 1.0,
									scaleZ = 1.0,
									rotationX = 0.0,
									rotationY = 0.3625194,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 3.7,
									colliderScaleY = 3.0,
									colliderScaleZ = 1.7,
									isTrigger = false,
									mass = 1.0,
									friction = 1.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Chest = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/chest/cofre2.mesh"
								},
								Transform = {
									positionX = -6.1,
									positionY = -68.43,
									positionZ = -554.5,
									scaleX = 1.0,
									scaleY = 1.0,
									scaleZ = 1.0,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 3.7,
									colliderScaleY = 3.0,
									colliderScaleZ = 1.7,
									isTrigger = false,
									mass = 1.0,
									friction = 1.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Chest = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/chest/cofre2.mesh"
								},
								Transform = {
									positionX = 8.47,
									positionY = -68.17,
									positionZ = -548.4,
									scaleX = 1.0,
									scaleY = 1.0,
									scaleZ = 1.0,
									rotationX = 0.0,
									rotationY = -0.3463627,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 3.7,
									colliderScaleY = 3.0,
									colliderScaleZ = 1.7,
									isTrigger = false,
									mass = 1.0,
									friction = 1.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Chest = {
								}
							}
						},
						{
							components = {
								MeshRenderer = {
									meshName  = "models/chest/cofre2.mesh"
								},
								Transform = {
									positionX = -5.4,
									positionY = 15.3,
									positionZ = -440.7,
									scaleX = 1.0,
									scaleY = 1.0,
									scaleZ = 1.0,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								RigidBody = {
									colliderScaleX = 3.7,
									colliderScaleY = 3.0,
									colliderScaleZ = 1.7,
									isTrigger = false,
									mass = 1.0,
									friction = 1.0,
									damping = 0.4,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								Chest = {
								}
							}
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
								Transform = {
									positionX = 0.0,
									positionY = -12.43,
									positionZ = -76.7,
									scaleX = 1.0,
									scaleY = 1.0,
									scaleZ = 1.0,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								MeshRenderer = {
									meshName  = "models/corals/Coral1.mesh"
								},
								RigidBody = {
									colliderScaleX = 1.36,
									colliderScaleY = 1.92,
									colliderScaleZ = 2.3,
									isTrigger = false,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								ContactDamage = {
									damage = 1
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = 10.8,
									positionY = -12.43,
									positionZ = -109.77,
									scaleX = 1.0,
									scaleY = 1.0,
									scaleZ = 1.0,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								MeshRenderer = {
									meshName  = "models/corals/Coral1.mesh"
								},
								RigidBody = {
									colliderScaleX = 1.36,
									colliderScaleY = 1.92,
									colliderScaleZ = 2.3,
									isTrigger = false,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								ContactDamage = {
									damage = 1
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = 10.8,
									positionY = -8.6,
									positionZ = -189.4,
									scaleX = 1.0,
									scaleY = 1.0,
									scaleZ = 1.0,
									rotationX = 0.0,
									rotationY = 0.6883546,
									rotationZ = 0.0
								},
								MeshRenderer = {
									meshName  = "models/corals/Coral1.mesh"
								},
								RigidBody = {
									colliderScaleX = 1.36,
									colliderScaleY = 1.92,
									colliderScaleZ = 2.3,
									isTrigger = false,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								ContactDamage = {
									damage = 1
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = -13.62,
									positionY = -12.4,
									positionZ = -63.54,
									scaleX = 1.0,
									scaleY = 1.0,
									scaleZ = 1.0,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								MeshRenderer = {
									meshName  = "models/corals/Coral2.mesh"
								},
								RigidBody = {
									colliderScaleX = 1.59,
									colliderScaleY = 2.04,
									colliderScaleZ = 0.91,
									isTrigger = false,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								ContactDamage = {
									damage = 1
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = -13.62,
									positionY = -12.4,
									positionZ = -116.81,
									scaleX = 1.0,
									scaleY = 1.0,
									scaleZ = 1.0,
									rotationX = 0.0,
									rotationY = 0.0,
									rotationZ = 0.0
								},
								MeshRenderer = {
									meshName  = "models/corals/Coral2.mesh"
								},
								RigidBody = {
									colliderScaleX = 1.59,
									colliderScaleY = 2.04,
									colliderScaleZ = 0.91,
									isTrigger = false,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								ContactDamage = {
									damage = 1
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = 8.0,
									positionY = -8.8,
									positionZ = -154.4,
									scaleX = 1.0,
									scaleY = 1.0,
									scaleZ = 1.0,
									rotationX = 0.0,
									rotationY = 0.7489557,
									rotationZ = 0.0
								},
								MeshRenderer = {
									meshName  = "models/corals/Coral2.mesh"
								},
								RigidBody = {
									colliderScaleX = 1.59,
									colliderScaleY = 2.04,
									colliderScaleZ = 0.91,
									isTrigger = false,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								ContactDamage = {
									damage = 1
								}
							}
						},
						{
							components = {
								Transform = {
									positionX = -14.3,
									positionY = -8.8,
									positionZ = -140.6,
									scaleX = 1.0,
									scaleY = 1.0,
									scaleZ = 1.0,
									rotationX = 0.0,
									rotationY = 0.7489557,
									rotationZ = 0.0
								},
								MeshRenderer = {
									meshName  = "models/corals/Coral2.mesh"
								},
								RigidBody = {
									colliderScaleX = 1.59,
									colliderScaleY = 2.04,
									colliderScaleZ = 0.91,
									isTrigger = false,
									mass = 1.0,
									friction = 1.0,
									damping = 0.0,
									bounciness = 0.0,
									colShape = 0,
									movementType = 1
								},
								ContactDamage = {
									damage = 1
								}
							}
						}
					}
				}
			}
		}
}
