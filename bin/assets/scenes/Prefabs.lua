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
	}
}
