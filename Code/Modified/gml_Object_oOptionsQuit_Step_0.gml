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
        if (global.curropt == 0)
        {
            with (oControl)
            {
                quitgame = 1
                reloadgame = 0
            }
            sfx_stop_all()
            mus_current_update_volume()
            mus_stop_all()
            with (oSS_Fg)
                event_user(0)
            active = 0
        }
        if (global.curropt == 1)
        {
            instance_create(50, 92, oPauseMenuOptions)
            instance_destroy()
        }
        sfx_play(sndMenuSel)
    }
}
