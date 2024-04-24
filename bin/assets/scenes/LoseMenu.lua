scene = {
    {
        components = {
            CameraComponent = { }
        }
    },
    {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT / 2,
                scaleX = WINDOW_WIDTH,
                scaleY = WINDOW_HEIGHT
            },
            Image = {
                name = "Tapiocimagen",
                imagePath = "textures/LoseMenu.png"
            }
        }
    },
    ReplayImageTextButton = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT * 3 / 4.5,
                scaleX = 75.0,
                scaleY = 75.0,
            },
            ImageTextButton = {
                name = "ReplayImageTextButton",
                onClickId = "MainMenuButtonClick",
                imagePathNormal = "textures/PlayButton.png",
                imagePathHover = "textures/PlayButton.png",
                imagePathActive = "textures/PlayButton.png",
                normalColorA = 0.0,
                hoverColorA = 0.0,
                activeColorA = 0.0,
            }
        }
    },
    ReturnImageTextButton = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 1.6,
                positionY = WINDOW_HEIGHT * 3 /4.5,
                scaleX = 50.0,
                scaleY = 50.0
            },
            ImageTextButton = {
                name = "ReturnImageTextButton",
                onClickId = "MainMenuButtonClick",
                imagePathNormal = "textures/PlayButton.png",
                imagePathHover = "textures/PlayButton.png",
                imagePathActive = "textures/PlayButton.png",
                normalColorA = 0.0,
                hoverColorA = 0.0,
                activeColorA = 0.0,
            }
        }
    }

}
  