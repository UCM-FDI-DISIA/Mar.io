scene = {
    {
        components = {
            GameManager = {
                
            }
        }
    }, 
    CoinSound = {
        components = {
            AudioSourceComponent = {
                sourcepath = "coin.mp3"
            }
        }
    }, 
    WalkSound = {
        components = {
            AudioSourceComponent = {
                sourcepath = "footstep.mp3"
            }
        }
    }, 
    MainMenuMusic = {
        components = {
            AudioSourceComponent = {
                islooping=true,
                ispaused=false,
                sourcepath = "MenuPrincipalMario.wav"
            }
        }
    }, 
    InGameMusic = {
        components = {
            AudioSourceComponent = {
                islooping=true,
                ispaused=true,
                sourcepath = "Amphiprion_Dance_Loop.mp3"
            }
        }
    }, 
    WinMenuMusic = {
        components = {
            AudioSourceComponent = {
                islooping=true,
                ispaused=true,
                sourcepath = "Cotylorhiza_Tuberculata_Loop.mp3"
            }
        }
    }
}