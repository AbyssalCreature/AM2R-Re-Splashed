if active
{
    if (oControl.kDown && oControl.kDownPushedSteps == 0)
    {
        global.curropt += 1
        if (global.curropt > lastitem)
            global.curropt = 0
        sfx_play(sndMenuMove)
    }
    if (oControl.kUp && oControl.kUpPushedSteps == 0)
    {
        global.curropt -= 1
        if (global.curropt < 0)
            global.curropt = lastitem
        sfx_play(sndMenuMove)
    }
    if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0)
    {
        sfx_play(sndMenuSel)
        if (global.curropt == 0)
        {
            if (op[global.curropt].label == spectate_str)
            {
                global.spectator = 1
                global.spectatorIndex = -1
                global.spectatorOption = 0
                global.newgame = 0
                room_goto(rm_loading)
            }
            else
            {
                global.newgame = 0
                global.spectatorOption = 0
                room_goto(rm_loading)
            }
        }
        if (global.curropt == 1)
        {
            global.spectatorOption = 0
            if global.lobbyLocked
            {
                global.spectator = 1
                global.spectatorIndex = -1
            }
            room_change(1, 1)
        }
    }
}
