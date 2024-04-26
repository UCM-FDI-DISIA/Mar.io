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
                imagePath = "bobMenu.png"
            }
           }
    },
 
    inforButton={
        components = {
            Transform = {
                positionX = WINDOW_WIDTH *0.9,
                positionY = WINDOW_HEIGHT*0.9,
                scaleX = 50.0,
                scaleY = 50.0,
            },
            ImageTextButton = {
                name = "StartImageButton",
                onClickId = "MainMenuButtonClick",
                imagePathNormal = "InforButton.png",
                imagePathHover = "InforButton.png",
                imagePathActive = "InforButton.png",
                normalColorA = 0.0,
                hoverColorA = 0.0,
                activeColorA = 0.0,
            }
        }
    }
}
  