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
                scaleX = WINDOW_WIDTH/7.0,
                scaleY = WINDOW_WIDTH/7.0,
            },
            ImageTextButton = {
                name = "ReplayImageTextButton",
                onClickId = "ReplayButtonClick",
                imagePathNormal = "Button/replay1.png",
                imagePathHover = "Button/replay2.png",
                imagePathActive = "Button/replay3.png",
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
                positionX = WINDOW_WIDTH *0.07,
                positionY = WINDOW_HEIGHT*0.9,
                scaleX = WINDOW_WIDTH/14.0,
                scaleY = WINDOW_WIDTH/14.0,
            },
            ImageTextButton = {
                name = "ReturnImageTextButton",
                onClickId = "ReturnButtonClick",
                imagePathNormal = "Button/return1.png",
                imagePathHover = "Button/return2.png",
                imagePathActive = "Button/return3.png",
                normalColorA = 0.0,
                hoverColorA = 0.0,
                activeColorA = 0.0,
            }
        }
    }

}
  