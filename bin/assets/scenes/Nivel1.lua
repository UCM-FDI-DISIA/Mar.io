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
				CameraFollowComponent = {
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
				FallDamageComponent = {
				},
				HealthComponent = {
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
						FistComponent = {
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
					materialName = "white"
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
					materialName = "white"
				}
			}
		},
		{
			components = {
				Transform = {
					positionX = 0.0,
					positionY = -11.2,
					positionZ = -344.5,
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
					materialName = "white"
				}
			}
		},
		{
			components = {
				Transform = {
					positionX = 0.0,
					positionY = 0.0,
					positionZ = -24.3,
					scaleX = 20.0,
					scaleY = 1.0,
					scaleZ = 40.0,
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
					meshName  = "models/cube2.mesh",
					materialName = "white"
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
							positionX = 7.2,
							positionY = 3.0,
							positionZ = -70.3,
							scaleX = 5.0,
							scaleY = 1.0,
							scaleZ = 5.0,
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
							meshName  = "models/cube2.mesh",
							materialName = "white"
						}
					}
				},
				{
					components = {
						Transform = {
							positionX = 7.2,
							positionY = 9.0,
							positionZ = -96.44,
							scaleX = 5.0,
							scaleY = 1.0,
							scaleZ = 5.0,
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
							meshName  = "models/cube2.mesh",
							materialName = "white"
						}
					}
				},
				{
					components = {
						Transform = {
							positionX = -6.14,
							positionY = 6.0,
							positionZ = -82.87001,
							scaleX = 5.0,
							scaleY = 1.0,
							scaleZ = 5.0,
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
							meshName  = "models/cube2.mesh",
							materialName = "white"
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
						CoinComponent = {
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
						CoinComponent = {
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
						CoinComponent = {
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
						CoinComponent = {
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
						CoinComponent = {
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
							positionX = 0.7,
							positionY = -22.2,
							positionZ = -284.7,
							scaleX = 7.0,
							scaleY = 1.0,
							scaleZ = 10.0,
							rotationX = 0.0,
							rotationY = 0.0,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 7.0,
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
							meshName  = "models/cube2.mesh",
							materialName = "white"
						}
					}
				},
				{
					components = {
						Transform = {
							positionX = 24.0,
							positionY = 5.4,
							positionZ = -280.4,
							scaleX = 7.0,
							scaleY = 1.0,
							scaleZ = 10.0,
							rotationX = 0.0,
							rotationY = 0.0,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 7.0,
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
							meshName  = "models/cube2.mesh",
							materialName = "white"
						}
					}
				},
				{
					components = {
						Transform = {
							positionX = -21.6,
							positionY = -20.1,
							positionZ = -227.2,
							scaleX = 7.0,
							scaleY = 1.0,
							scaleZ = 10.0,
							rotationX = 0.0,
							rotationY = 0.0,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 7.0,
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
							meshName  = "models/cube2.mesh",
							materialName = "white"
						}
					}
				},
				{
					components = {
						Transform = {
							positionX = -37.7,
							positionY = -26.7,
							positionZ = -284.3,
							scaleX = 7.0,
							scaleY = 1.0,
							scaleZ = 10.0,
							rotationX = 0.0,
							rotationY = 0.0,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 7.0,
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
							meshName  = "models/cube2.mesh",
							materialName = "white"
						}
					}
				},
				{
					components = {
						Transform = {
							positionX = 0.4,
							positionY = -14.0,
							positionZ = -261.0,
							scaleX = 10.0,
							scaleY = 1.0,
							scaleZ = 7.0,
							rotationX = 0.0,
							rotationY = 0.0,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 10.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 7.0,
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
							materialName = "white"
						}
					}
				},
				{
					components = {
						Transform = {
							positionX = -28.3,
							positionY = -24.7,
							positionZ = -256.6,
							scaleX = 6.0,
							scaleY = 1.0,
							scaleZ = 6.0,
							rotationX = 0.0,
							rotationY = 0.0,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 6.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 6.0,
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
							materialName = "white"
						}
					}
				},
				{
					components = {
						Transform = {
							positionX = 27.2,
							positionY = -5.7,
							positionZ = -256.6,
							scaleX = 6.0,
							scaleY = 1.0,
							scaleZ = 6.0,
							rotationX = 0.0,
							rotationY = 0.0,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 6.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 6.0,
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
							materialName = "white"
						}
					}
				},
				{
					components = {
						Transform = {
							positionX = 23.2,
							positionY = -13.0,
							positionZ = -227.9,
							scaleX = 6.0,
							scaleY = 1.0,
							scaleZ = 6.0,
							rotationX = 0.0,
							rotationY = 0.0,
							rotationZ = 0.0
						},
						RigidBody = {
							colliderScaleX = 6.0,
							colliderScaleY = 1.0,
							colliderScaleZ = 6.0,
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
							materialName = "white"
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
							positionX = -60.10001,
							positionY = 43.5,
							positionZ = -440.0,
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
							materialName = "white"
						}
					}
				},
				{
					components = {
						Transform = {
							positionX = -80.10001,
							positionY = 31.8,
							positionZ = -440.0,
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
							materialName = "white"
						}
					}
				},
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
							materialName = "white"
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
							materialName = "white"
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
							materialName = "white"
						}
					}
				},
				{
					components = {
						Transform = {
							positionX = 0.0,
							positionY = 105.5,
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
							materialName = "white"
						}
					}
				},
				{
					components = {
						Transform = {
							positionX = 0.0,
							positionY = -81.7,
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
							materialName = "white"
						}
					}
				},
				{
					components = {
						Transform = {
							positionX = -60.10001,
							positionY = 94.5,
							positionZ = -480.0,
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
							materialName = "white"
						}
					}
				},
				{
					components = {
						Transform = {
							positionX = -80.10001,
							positionY = 85.0,
							positionZ = -480.0,
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
							materialName = "white"
						}
					}
				},
				{
					components = {
						Transform = {
							positionX = -60.10001,
							positionY = 56.8,
							positionZ = -460.0,
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
							materialName = "white"
						}
					}
				},
				{
					components = {
						Transform = {
							positionX = -80.10001,
							positionY = 71.39999,
							positionZ = -460.0,
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
							materialName = "white"
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
							materialName = "white"
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
							materialName = "white"
						}
					}
				},
				{
					components = {
						Transform = {
							positionX = -60.1,
							positionY = 7.4,
							positionZ = -420.0,
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
							materialName = "white"
						}
					}
				},
				{
					components = {
						Transform = {
							positionX = -80.10001,
							positionY = 19.3,
							positionZ = -420.0,
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
							materialName = "white"
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
							materialName = "white"
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
							materialName = "white"
						}
					}
				},
				{
					components = {
						Transform = {
							positionX = 5.0,
							positionY = 12.8,
							positionZ = -500.7,
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
							materialName = "white"
						}
					}
				}
			}
		}
}
