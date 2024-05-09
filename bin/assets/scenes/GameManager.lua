scene = {
  {
    components = {
      GameManager = {}
    }
  }, 
  MainMenuMusic = {
    components = {
      AudioSourceComponent = {
        islooping = true,
        ispaused = false,
        sourcepath = "MenuPrincipalMario.wav"
      }
    }
  }, 
  InGameMusic = {
    components = {
      AudioSourceComponent = {
        islooping = true,
        ispaused = true,
        sourcepath = "Amphiprion_Dance_Loop.mp3"
      }
    }
  }, 
  WinMenuMusic = {
    components = {
      AudioSourceComponent = {
        islooping = true,
        ispaused = true,
        sourcepath = "Cotylorhiza_Tuberculata_Loop.mp3"
      }
    }
  }, 
  GameOverMenuMusic = {
    components = {
      AudioSourceComponent = {
        islooping = true,
        ispaused = true,
        sourcepath = "Swimming_Through_The_Abyss_Loop.mp3"
      }
    }
  }
}