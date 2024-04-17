scene = {
    {
        components = {
            CameraComponent = { -- Para tener un fondo negro
                zOrder = -1, -- Cuando se arregle, se podrá quitar
            }
        }
    },
    MainMenuText={
        components = {
            Transform = {
                positionX = WINDOW_WIDTH / 2,
                positionY = WINDOW_HEIGHT / 2
            },
            Text = {
                name = "MainText",
                text = "Main Menu",
                textSize = 36.0,
                textFontName = "AGENCYB.TTF"
            }
        }
    }
}
  