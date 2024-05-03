--[[
    src:
        ie_closeWindow          cerrar vebtaba

        ie_keyUp                pulsar tecla
        ie_keyDown              soltar tecla

        ie_mouseMoving          mover ratón
        ie_mouseButtonUp        soltar botón del ratón
        ie_mouseButtonDown      pulsar botón del ratón
        ie_mouseWheel           girar rueda del ratón

        ie_ctrlAxisMotion       mover eje del mando
        ie_ctrlButtonUp         soltar botón del mando
        ie_ctrlButtonDown       pulsar botón del mando

    control:
        (mirar controlValuesGuide.txt y buscar el símbolo - para cada categoría)


    events = {
        ev_NOMBRE_EVENTO = {
            src = origen_del_evento,
            control = valorInputDeSDL
        },
        ...
    }


    PARA MAPEAR EL MISMO EVENTO A VARIOS CONTROLES, AÑADIR AL FINAL DEL NOMBRE DEL EVENTO
    UN _N, SIENDO N UN NÚMERO QUE LO HAGA DIFERENTE DEL RESTO DE EVENTOS CON EL MISMO NOMBRE
    (LUA SOLO SE QUEDA CON EL PRIMER NOMBRE QUE ENCUENTRA DE ENTRE TODOS LOS QUE SON IGUALES)
]]

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
    ev_MELEATTACK = {
        src = "ie_keyDown",
        control = 102    --f
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
