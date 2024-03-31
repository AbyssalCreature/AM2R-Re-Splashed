if active
{
    if (oControl.kDown && oControl.kDownPushedSteps == 0)
    {
        global.curropt += 1
        if (global.curropt > lastitem)
            global.curropt = 0
        if (global.curropt == 3 && op4.enabled == 0)
            global.curropt += 1
        sfx_play(sndMenuMove)
        global.tiptext = tip[global.curropt]
    }
    if (oControl.kUp && oControl.kUpPushedSteps == 0)
    {
        global.curropt -= 1
        if (global.curropt < 0)
            global.curropt = lastitem
        while (global.curropt == 3 && op4.enabled == 0)
            global.curropt -= 1
        sfx_play(sndMenuMove)
        global.tiptext = tip[global.curropt]
    }
    if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0)
    {
        sfx_play(sndMenuSel)
        if (global.curropt == 0)
        {
            instance_create(50, 92, oOptionsDisplay)
            instance_destroy()
        }
        if (global.curropt == 1)
        {
            instance_create(50, 92, oOptionsSound)
            instance_destroy()
        }
        if (global.curropt == 2)
        {
            instance_create(50, 92, oOptionsControl)
            instance_destroy()
        }
        if (global.curropt == 3)
        {
            instance_create(50, 84, oOptionsExtras)
            instance_destroy()
        }
        if (global.curropt == 4)
        {
            if (instance_exists(oSS_Control) > 0)
            {
                instance_create(50, 92, oPauseMenuOptions)
                instance_destroy()
            }
            else
            {
                save_gameoptions()
                global.curropt = 4
                room_change(1, 0)
            }
        }
    }
}
