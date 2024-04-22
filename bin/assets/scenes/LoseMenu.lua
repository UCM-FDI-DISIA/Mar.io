scene = {
    {
        components = {
            CameraComponent = { -- Para tener un fondo negro
                zOrder = 2, -- Cuando se arregle, se podrá quitar
            }
           
        }
    }
    ,
    {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH/2,
                positionY =WINDOW_HEIGHT/2,
                scaleX = WINDOW_WIDTH/1.0,
                scaleY = WINDOW_HEIGHT/1.0
            },
            Image = {
                name = "Tapiocimagen",
                imagePath = "textures/LoseMenu.png"
            }
        }
    },
    ReplayImageTextButton={
        -- zIndex = 0, -- No importa si es 0
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT*3/4.5,
                positionZ = 0.0, -- No importa
                scaleX = 75.0,
                scaleY = 75.0,
                scaleZ = 0.0, -- No importa
                rotationX = 0.0, -- No importa
                rotationY = 0.0, -- No importa
                rotationZ = 0.0 -- No importa
            },
            ImageTextButton = {
                name = "ReplayImageTextButton",
                onClickId = "MainMenuButtonClick",
                wantText = false,
                imagePathNormal = "textures/PlayButton.png",
                imagePathHover = "textures/PlayButton.png",
                imagePathActive = "textures/PlayButton.png",
                uv0X = 0.0,
                uv0Y = 0.0,
                uv1X = 1.0,
                uv1Y = 1.0,
                imageBgColorR = 0.0,
                imageBgColorG = 0.0,
                imageBgColorB = 0.0,
                imageBgColorA = 0.0,
                imageTintR = 1.0,
                imageTintG = 1.0,
                imageTintB = 1.0,
                imageTintA = 1.0,
                normalColorR = 0.0,
                normalColorG = 1.0,
                normalColorB = 0.0,
                normalColorA = 0.0,
                hoverColorR = 0.0,
                hoverColorG = 0.0,
                hoverColorB = 1.0,
                hoverColorA = 0.0,
                activeColorR = 1.0,
                activeColorG = 1.0,
                activeColorB = 1.0,
                activeColorA = 0.0,
                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            }
        }
    }
    ,
    ReturnImageTextButton={
        -- zIndex = 0, -- No importa si es 0
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 1.6,
                positionY = WINDOW_HEIGHT*3/4.5,
                positionZ = 0.0, -- No importa
                scaleX = 50.0,
                scaleY = 50.0,
                scaleZ = 0.0, -- No importa
                rotationX = 0.0, -- No importa
                rotationY = 0.0, -- No importa
                rotationZ = 0.0 -- No importa
            },
            ImageTextButton = {
                name = "ReturnImageTextButton",
                onClickId = "MainMenuButtonClick",
                wantText = false,
                imagePathNormal = "textures/PlayButton.png",
                imagePathHover = "textures/PlayButton.png",
                imagePathActive = "textures/PlayButton.png",
                uv0X = 0.0,
                uv0Y = 0.0,
                uv1X = 1.0,
                uv1Y = 1.0,
                imageBgColorR = 0.0,
                imageBgColorG = 0.0,
                imageBgColorB = 0.0,
                imageBgColorA = 0.0,
                imageTintR = 1.0,
                imageTintG = 1.0,
                imageTintB = 1.0,
                imageTintA = 1.0,
                normalColorR = 0.0,
                normalColorG = 1.0,
                normalColorB = 0.0,
                normalColorA = 0.0,
                hoverColorR = 0.0,
                hoverColorG = 0.0,
                hoverColorB = 1.0,
                hoverColorA = 0.0,
                activeColorR = 1.0,
                activeColorG = 1.0,
                activeColorB = 1.0,
                activeColorA = 0.0,
                windowFlags = ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings
            }
        }
    }

}
  