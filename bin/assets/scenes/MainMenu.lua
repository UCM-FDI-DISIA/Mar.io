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
            Image = {
                name = "Tapiocimagen",
                imagePath = "textures/MainMenu.png"
            }
        }
    },
    StartImageTextButton = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 1.7,
                positionY = WINDOW_HEIGHT / 2,
                scaleX = 100.0,
                scaleY = 100.0,
            },
            ImageTextButton = {
                name = "StartImageButton",
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
  