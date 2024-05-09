events = {
    ev_Pause = {
        src = "ie_keyDown",
        control = 27    -- ESCAPE
    },
    ev_MOVEFORWARD = {
        src = "ie_keyDown",
        control = 119   -- w
    },
    ev_MOVELEFT = {
        src = "ie_keyDown",
        control = 97    --a
    },
    ev_MOVEBACK = {
        src = "ie_keyDown",
        control = 115    --s
    },
    ev_MOVERIGHT = {
        src = "ie_keyDown",
        control = 100    --d
    },
    ev_MOVEFORWARDEND = {
        src = "ie_keyUp",
        control = 119   -- w
    },
    ev_MOVELEFTEND = {
        src = "ie_keyUp",
        control = 97    --a
    },
    ev_MOVEBACKEND = {
        src = "ie_keyUp",
        control = 115    --s
    },
    ev_MOVERIGHTEND = {
        src = "ie_keyUp",
        control = 100    --d
    },
    ev_MELEATTACK_1 = {
        src = "ie_keyDown",
        control = 102    --f
    },
    ev_MELEATTACK_2 = {
        src = "ie_mouseButtonDown",
        control = 1    --LEFT CLICK
    },
	ev_JUMP = {
        src = "ie_keyDown",
        control = 32    --SPACE
    },
	ev_Run = {
        src = "ie_keyDown",
        control = 1073742049 --LSHIFT 
    },
	ev_Run_1 = {
        src = "ie_keyDown",
        control = 1073742053 --RSHIFT 
    },
	ev_RunEnd = {
        src = "ie_keyUp",
        control = 1073742049 --LSHIFT 
    },
	ev_RunEnd_1 = {
        src = "ie_keyUp",
        control = 1073742053 --RSHIFT 
    },
	ev_Run_2 = {
        src = "ie_keyDown",
        control = 107 --RSHIFT 
    },
	ev_RunEnd_2 = {
        src = "ie_keyUp",
        control = 107 --LSHIFT 
    }
}
