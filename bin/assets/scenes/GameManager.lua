scene = {
    {
        components = {
            GameManager = {
                
            }
        }
    }
    , CoinSound = {
        components = {
            AudioSourceComponent = {
                sourcepath = "coin.mp3"
            }
        }
    }
    , WalkSound = {
        components = {
            AudioSourceComponent = {
                sourcepath = "footstep.mp3"
            }
        }
    }
    , MainMenuMusic = {
        components = {
            AudioSourceComponent = {
                islooping=true,
                ispaused=false,
                sourcepath = "MenuPrincipalMario.wav"
            }
        }
    }
}