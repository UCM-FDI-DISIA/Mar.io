scene = {
    {
        components = {
            CameraComponent = {
                bgColorR = 0.0,
                bgColorG = 0.659,
                bgColorB = 0.929
            },
            SplashScreenComponent = {
                changeTime = 2000,
                splashScene = "StartScene",
                mainScene = "Managers"
            }
        }
    },
    madeWithText = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT *0.425
            },
            Text = {
                text = "made with",
                textSize = WINDOW_WIDTH/25,
                textFontName = "AGENCYB.TTF"
            }
        }
    },
    TapiocaText = {
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT / 2
            },
            Text = {
                text = "Tapioca Engine",
                textSize = WINDOW_WIDTH/15,
                textFontName = "AGENCYB.TTF"
            }
        }
    }
}
  