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
                imagePath = "LoseMenu.png"
            }
        }
    },
    ReplayImageTextButton = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT * 3 / 4.5,
                scaleX = 85.0,
                scaleY = 85.0,
            },
            ImageTextButton = {
                name = "ReplayImageTextButton",
                onClickId = "ReplayButtonClick",
                imagePathNormal = "ReplayButton.png",
                imagePathHover = "ReplayButton.png",
                imagePathActive = "ReplayButton.png",
                normalColorA = 0.0,
                hoverColorA = 0.0,
                activeColorA = 0.0,
            }
        }
    }
    ,
    ReturnImageTextButton = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH *0.9,
                positionY = WINDOW_HEIGHT*0.1,
                scaleX = 50.0,
                scaleY = 50.0
            },
            ImageTextButton = {
                name = "ReturnImageTextButton",
                onClickId = "ReturnButtonClick",
                imagePathNormal = "ReturnButton.png",
                imagePathHover = "ReturnButton.png",
                imagePathActive = "ReturnButton.png",
                normalColorA = 0.0,
                hoverColorA = 0.0,
                activeColorA = 0.0,
            }
        }
    }

}
  