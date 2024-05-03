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
                imagePath = "MainMenu.png"
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
                onClickId = "MainMenuButtonClick",
                imagePathNormal = "Button/play3.png",
                imagePathHover = "Button/play1.png",
                imagePathActive = "Button/play2.png",
                normalColorA = 0.0,
                hoverColorA = 0.0,
                activeColorA = 0.0,
            }
        }
    },
    inforButton={
        components = {
            Transform = {
                positionX = WINDOW_WIDTH *0.9,
                positionY = WINDOW_HEIGHT*0.1,
                scaleX = 50.0,
                scaleY = 50.0,
            },
            ImageTextButton = {
                onClickId = "MainMenuButtonClick",
                imagePathNormal = "Button/infor1.png",
                imagePathHover = "Button/infor2.png",
                imagePathActive = "Button/infor3.png",
                normalColorA = 0.0,
                hoverColorA = 0.0,
                activeColorA = 0.0,
            }
        }
    }
}
  