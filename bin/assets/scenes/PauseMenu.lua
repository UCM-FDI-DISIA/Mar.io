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
                name = "Tapiocaimagen",
                imagePath = "table.png",
                windowFlags= ImGuiWindowFlags_NoDecoration | ImGuiWindowFlags_NoMove | ImGuiWindowFlags_NoBackground | ImGuiWindowFlags_NoSavedSettings | ImGuiWindowFlags_NoBringToFrontOnFocus | ImGuiWindowFlags_NoFocusOnAppearing

            }
        }
    },
    ContinueButton = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT * 3 / 4.5,
                scaleX = 85.0,
                scaleY = 85.0,
            },
            ImageTextButton = {
                name = "ContinueButton",
                onClickId = "ContinueButtonClick",
                imagePathNormal = "Button/play3.png",
                imagePathHover = "Button/play1.png",
                imagePathActive = "Button/play2.png",
                normalColorA = 0.0,
                hoverColorA = 0.0,
                activeColorA = 0.0,
            }
        }
    }
    ,
    ReplayButton = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH *0.625,
                positionY = WINDOW_HEIGHT * 3 /4.5,
                scaleX = 70.0,
                scaleY = 70.0
            },
            ImageTextButton = {
                name = "ReplayButton",
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
    ReturnButton = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH * 0.375,
                positionY = WINDOW_HEIGHT * 3 /4.5,
                scaleX = 70.0,
                scaleY = 70.0
            },
            ImageTextButton = {
                name = "ReturnButton",
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