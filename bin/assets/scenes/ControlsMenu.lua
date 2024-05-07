scene = {
    -- {
    --     components = {
    --         CameraComponent = { }
    --     }
    -- },
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
                imagePath = "Controls.png",
                windowFlags= ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings | ImGuiWindowFlags_NoBringToFrontOnFocus | ImGuiWindowFlags_NoFocusOnAppearing

            }
        }
    },
    ReturnButton = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH * 0.5,
                positionY = WINDOW_HEIGHT * 0.8,
                scaleX = 70.0,
                scaleY = 70.0
            },
            ImageTextButton = {
                name = "ReturnButton",
                onClickId = "ControlsReturn",
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