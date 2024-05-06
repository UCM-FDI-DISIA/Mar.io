scene = {
    {
        components = {
            CameraComponent = { }
        }
    },
    coinsHUd = {
        zIndex = 1,
        components = {
            Transform = {
                positionX = WINDOW_WIDTH * 1.5 / 3.5,
                positionY = WINDOW_HEIGHT * 3 / 4.5,
                scaleX = 85.0,
                scaleY = 85.0,
                rotationX = 0.0,
                rotationY = 0.0,
                rotationZ = 0.0
            },
            Image = {
                imagePath = "hudcoin.png"
            }
        }
    },
    coinsText = {
        zIndex = 2,
        components = {
            Transform = {
                positionX = WINDOW_WIDTH * 1.5 / 3.5,
                positionY = WINDOW_HEIGHT * 3 / 4.5,
            },
            Text = {
                text = "0X",
                textSize = 30.0,
                textFontName = "AGENCYB.TTF",
                textColorR = 0.9,
                textColorG = 0.9,
                textColorB = 0.9,
                textColorA = 1.0
            },
            LevelScore={

            }
        
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
                imagePath = "WinMenu.png"
            }
        }
    },
    NextImageTextButton = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH * 2 / 3.5,
                positionY = WINDOW_HEIGHT * 3 / 4.5,
                scaleX = 85.0,
                scaleY = 85.0,
            },
            ImageTextButton = {
                name = "NextImageTextButton",
                onClickId = "ReturnButtonClick",
                imagePathNormal = "Button/next1.png",
                imagePathHover = "Button/next2.png",
                imagePathActive = "Button/next3.png",
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
  