scene  = {
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
		Player = {
			components = {
				Transform = {
					positionX = 0.0,
					positionY = 3.0,
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
					colliderScaleX = 2.0,
					colliderScaleY = 5.0,
					colliderScaleZ = 2.0,
					isTrigger = false,
					mass = 10.0,
					friction = 0.6,
					damping = 0.4,
					bounciness = 2.0,
					colShape = 3,
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
							positionY = 3.0,
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
					colliderScaleX = 20.0,
					colliderScaleY = 20.0,
					colliderScaleZ = 40.0,
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
					colliderScaleX = 20.0,
					colliderScaleY = 20.0,
					colliderScaleZ = 40.0,
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
					colliderScaleX = 20.0,
					colliderScaleY = 20.0,
					colliderScaleZ = 40.0,
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
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							colliderScaleX = 10.0,
							colliderScaleY = 10.0,
							colliderScaleZ = 10.0,
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
							colliderScaleX = 50.0,
							colliderScaleY = 50.0,
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
							meshName  = "models/cube2.mesh",
							materialName = "grass"
						}
					}
				},
				{
					components = {
						Transform = {
							positionX = 0.0,
							positionY = 104.1,
							positionZ = -543.3,
							scaleX = 50.0,
							scaleY = 10.0,
							scaleZ = 50.0,
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
							colliderScaleX = 10.0,
							colliderScaleY = 10.0,
							colliderScaleZ = 10.0,
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
							colliderScaleX = 10.0,
							colliderScaleY = 10.0,
							colliderScaleZ = 10.0,
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
							colliderScaleX = 10.0,
							colliderScaleY = 10.0,
							colliderScaleZ = 10.0,
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
							colliderScaleX = 10.0,
							colliderScaleY = 10.0,
							colliderScaleZ = 10.0,
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
							positionY = 1.0,
							positionZ = -12.6,
							scaleX = 0.42,
							scaleY = 0.14,
							scaleZ = 0.81,
							rotationX = 0.0,
							rotationY = 0.0,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 20.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 40.0,
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
							colliderScaleX = 20.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 40.0,
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
							colliderScaleX = 20.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 40.0,
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
							colliderScaleX = 20.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 40.0,
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
							colliderScaleX = 50.0,
							colliderScaleY = 1.0,
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
							colliderScaleX = 50.0,
							colliderScaleY = 1.0,
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
							colliderScaleX = 50.0,
							colliderScaleY = 1.0,
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
							colliderScaleX = 50.0,
							colliderScaleY = 1.0,
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
						RigidBody = {
							colliderScaleX = 5.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 5.0,
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
						RigidBody = {
							colliderScaleX = 5.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 5.0,
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
						RigidBody = {
							colliderScaleX = 5.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 5.0,
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
							colliderScaleX = 5.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 5.0,
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
							colliderScaleX = 5.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 5.0,
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
							colliderScaleX = 5.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 5.0,
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
							colliderScaleX = 5.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 5.0,
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
							colliderScaleX = 5.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 5.0,
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
							colliderScaleX = 5.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 5.0,
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
							colliderScaleX = 5.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 5.0,
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
							colliderScaleX = 5.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 5.0,
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
							colliderScaleX = 5.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 5.0,
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
						RigidBody = {
							colliderScaleX = 5.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 5.0,
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
							colliderScaleX = 5.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 5.0,
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
							colliderScaleX = 10.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 10.0,
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
							colliderScaleX = 10.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 10.0,
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
							colliderScaleX = 10.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 10.0,
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
							colliderScaleX = 10.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 10.0,
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
							colliderScaleX = 10.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 10.0,
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
							colliderScaleX = 10.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 10.0,
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
							colliderScaleX = 10.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 10.0,
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
							colliderScaleX = 10.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 10.0,
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
							positionX = 24.37,
							positionY = 118.97,
							positionZ = -543.0,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.5198174,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = 32.43,
							positionY = 123.36,
							positionZ = -549.47,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = -0.575148,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = 34.12,
							positionY = 118.34,
							positionZ = -543.0,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = -0.5907464,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = -21.1,
							positionY = 122.8,
							positionZ = -549.1,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = -0.575148,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = -19.41,
							positionY = 118.46,
							positionZ = -543.0,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = -0.5907464,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = -24.23,
							positionY = 120.35,
							positionZ = -547.53,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.0,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = -29.16,
							positionY = 118.08,
							positionZ = -543.0,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.5198174,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = -27.17,
							positionY = 122.0,
							positionZ = -549.28,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.5515003,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = -24.23,
							positionY = 127.2,
							positionZ = -553.0,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.0,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = 13.11,
							positionY = 124.7,
							positionZ = -548.7,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.7071068,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = 14.8,
							positionY = 128.09,
							positionZ = -553.08,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = -0.8979892,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = 15.17,
							positionY = 121.48,
							positionZ = -544.31,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = -0.3346293,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = 19.48,
							positionY = 118.36,
							positionZ = -543.0,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.1407284,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = 18.68,
							positionY = 129.2,
							positionZ = -553.0,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = -0.06627396,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = 2.1,
							positionY = 126.7,
							positionZ = -552.3,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = -0.8658945,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionY = 129.31,
							positionZ = -553.0,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.0,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = 1.72,
							positionY = 123.05,
							positionZ = -547.8,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.7071068,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = -4.6,
							positionY = 121.63,
							positionZ = -546.33,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.7071068,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionY = 124.7,
							positionZ = -549.77,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.7071068,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionY = 116.96,
							positionZ = -543.0,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.7071068,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = -14.31,
							positionY = 129.1,
							positionZ = -553.0,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.0,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = -13.57,
							positionY = 120.73,
							positionZ = -546.98,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = -0.002617989,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = -10.51,
							positionY = 126.42,
							positionZ = -551.89,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = -0.3685302,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = -9.98,
							positionY = 122.49,
							positionZ = -548.52,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.4663866,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = -4.6,
							positionY = 124.7,
							positionZ = -550.96,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.7071068,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = -4.6,
							positionY = 117.38,
							positionZ = -543.0,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.0,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = -4.6,
							positionY = 129.0,
							positionZ = -553.0,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.0,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionY = 120.53,
							positionZ = -549.37,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.7071068,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionY = 125.33,
							positionZ = -552.05,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.7071068,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionY = 117.43,
							positionZ = -543.0,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.7071068,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = -34.06,
							positionY = 128.0,
							positionZ = -553.0,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.0,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = -39.44,
							positionY = 127.46,
							positionZ = -553.0,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.0,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = 9.88,
							positionY = 123.26,
							positionZ = -546.6,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.7071068,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = 2.98,
							positionY = 118.22,
							positionZ = -543.0,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = -0.3346293,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = 9.12,
							positionY = 126.79,
							positionZ = -551.45,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = -0.5,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = 7.46,
							positionY = 117.91,
							positionZ = -543.0,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.1830934,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = 29.3,
							positionY = 128.15,
							positionZ = -553.0,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.0,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = 29.3,
							positionY = 123.65,
							positionZ = -547.9,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.0,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
							positionX = 26.36,
							positionY = 123.24,
							positionZ = -549.65,
							scaleX = 0.5,
							scaleY = 0.5,
							scaleZ = 0.5,
							rotationX = 0.0,
							rotationY = 0.5515003,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 2.0,
							colliderScaleY = 2.0,
							colliderScaleZ = 1.0,
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
		}
}
