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
        global.difficulty = global.curropt
        switch global.curropt
        {
            case 0:
            case 1:
                oControl.mod_fusion = 0
                oControl.mod_diffmult = 1
                break
            case 2:
                oControl.mod_fusion = 0
                oControl.mod_diffmult = 2
                break
            case 3:
                global.difficulty = 2
                oControl.mod_fusion = 1
                oControl.mod_diffmult = 4
                break
            default:
                oControl.mod_fusion = 0
                oControl.mod_diffmult = 1
                break
        }

        global.newgame = 1
        if instance_exists(op[0])
        {
            with (op[0])
                instance_destroy()
        }
        if instance_exists(op[1])
        {
            with (op[1])
                instance_destroy()
        }
        if instance_exists(op[2])
        {
            with (op[2])
                instance_destroy()
        }
        if instance_exists(op[3])
        {
            with (op[3])
                instance_destroy()
        }
        mus_fadeout(musTitle)
        if global.lobbyLocked
        {
            global.spectator = 1
            global.spectatorIndex = -1
        }
        room_change(14, 0)
    }
    if (oControl.kMenu2 && oControl.kMenu2PushedSteps == 0)
    {
        global.curropt = 10
        sfx_play(sndMenuCancel)
        event_user(1)
    }
}
if fadein
{
    if (h < (targeth - 4))
        h += 4
    else
    {
        h = targeth
        fadein = 0
        active = 1
        event_user(0)
    }
}
if fadeout
{
    if (h > -11)
        h -= 4
    else
    {
        if (global.curropt == 10)
        {
            with (oGameSelMenu)
                alarm[0] = 5
            global.curropt = global.saveslot
        }
        instance_destroy()
    }
}
