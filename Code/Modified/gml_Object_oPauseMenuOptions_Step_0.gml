if active
{
    if (oControl.kDown && oControl.kDownPushedSteps == 0)
    {
        global.curropt += 1
        if (global.curropt > lastitem)
            global.curropt = 0
        sfx_play(sndMenuMove)
        global.tiptext = tip[global.curropt]
    }
    if (oControl.kUp && oControl.kUpPushedSteps == 0)
    {
        global.curropt -= 1
        if (global.curropt < 0)
            global.curropt = lastitem
        sfx_play(sndMenuMove)
        global.tiptext = tip[global.curropt]
    }
    if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0)
    {
        sfx_play(sndMenuSel)
        if (global.curropt == 0)
        {
            with (oSS_Fg)
                event_user(0)
            active = 0
        }
        if (global.curropt == 1)
        {
            instance_create(50, 92, oOptionsReload)
            instance_destroy()
        }
        if (global.curropt == 2)
        {
            instance_create(50, 92, oOptionsMain)
            instance_destroy()
        }
        if (global.curropt == 3)
        {
            instance_create(50, 92, oOptionsQuit)
            instance_destroy()
        }
    }
}
