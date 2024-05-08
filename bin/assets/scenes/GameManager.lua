scene = {
  {
    components = {
      GameManager = {}
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
  }, 
  JumpSound = {
    components = {
      AudioSourceComponent = {
        sourcepath = "jump.mp3"
      }
    }
  }, 
  FistSound = {
    components = {
      AudioSourceComponent = {
				islooping = true,
        ispaused = true,
        sourcepath = "fist.mp3"
      }
    }
  }, 
  LifeUpSound = {
    components = {
      AudioSourceComponent = {
        sourcepath = "heal.mp3"
      }
    }
  }, 
  InvincibilitySound = {
    components = {
      AudioSourceComponent = {
        sourcepath = "invincibility.mp3"
      }
    }
  }
}