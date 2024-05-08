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
                imagePath = "MainMenu.png",
                windowFlags= ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings | ImGuiWindowFlags_NoBringToFrontOnFocus | ImGuiWindowFlags_NoFocusOnAppearing |ImGuiWindowFlags_NoInputs
            }
           }
    },
    StartImageTextButton = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 1.7,
                positionY = WINDOW_HEIGHT / 2,
                scaleX = WINDOW_WIDTH/6.0,
                scaleY = WINDOW_WIDTH/6.0,
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
                scaleX = WINDOW_WIDTH/14.0,
                scaleY = WINDOW_WIDTH/14.0
            },
            ImageTextButton = {
                onClickId = "ControlsButtonClick",
                imagePathNormal = "Button/infor1.png",
                imagePathHover = "Button/infor2.png",
                imagePathActive = "Button/infor3.png",
                normalColorA = 0.0,
                hoverColorA = 0.0,
                activeColorA = 0.0,
            }
        }
    },
    ExitButton={
        components = {
            Transform = {
                positionX = WINDOW_WIDTH *0.07,
                positionY = WINDOW_HEIGHT*0.9,
                scaleX = WINDOW_WIDTH/14.0,
                scaleY = WINDOW_WIDTH/14.0
            },
            ImageTextButton = {
                onClickId = "ExitButtonClick",
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
  