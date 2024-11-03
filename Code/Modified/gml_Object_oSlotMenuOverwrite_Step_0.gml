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
            with (oSlotMenuCopy)
                event_user(0)
            event_user(1)
        }
        if (global.curropt == 1)
            event_user(1)
    }
    if (oControl.kMenu2 && oControl.kMenu2PushedSteps == 0)
    {
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
    if (h > 4)
        h -= 4
    else
    {
        with (oSlotMenuCopy)
            alarm[0] = 5
        instance_destroy()
    }
}
