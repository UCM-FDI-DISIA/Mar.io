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
                onClickId = "MainMenuButtonClick",
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
    ConfImageTextButton = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH *0.625,
                positionY = WINDOW_HEIGHT * 3 /4.5,
                scaleX = 70.0,
                scaleY = 70.0
            },
            ImageTextButton = {
                name = "ConfImageTextButton",
                onClickId = "MainMenuButtonClick",
                imagePathNormal = "ConfButton.png",
                imagePathHover = "ConfButton.png",
                imagePathActive = "ConfButton.png",
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
                positionX = WINDOW_WIDTH * 0.375,
                positionY = WINDOW_HEIGHT * 3 /4.5,
                scaleX = 70.0,
                scaleY = 70.0
            },
            ImageTextButton = {
                name = "ReturnImageTextButton",
                onClickId = "MainMenuButtonClick",
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
  