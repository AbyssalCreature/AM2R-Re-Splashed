if active
{
    if (oControl.kDown > 0 && (oControl.kDownPushedSteps == 0 || (oControl.kDownPushedSteps > 30 && timer == 0)))
    {
        global.curropt += 1
        if (global.curropt > lastitem)
            global.curropt = 0
        sfx_play(sndMenuMove)
        global.tiptext = tip[global.curropt]
    }
    if (oControl.kUp > 0 && (oControl.kUpPushedSteps == 0 || (oControl.kUpPushedSteps > 30 && timer == 0)))
    {
        global.curropt -= 1
        if (global.curropt < 0)
            global.curropt = lastitem
        sfx_play(sndMenuMove)
        global.tiptext = tip[global.curropt]
    }
    if (((oControl.kLeft > 0 && oControl.kLeftPushedSteps == 0) || (oControl.kRight > 0 && oControl.kRightPushedSteps == 0)) && oControl.kDown == 0 && oControl.kUp == 0)
    {
        if (global.curropt == 2)
        {
            oControl.mod_lowhealthwarning = (!oControl.mod_lowhealthwarning)
            sfx_play(sndMenuMove)
            event_user(2)
        }
    }
    if (oControl.kLeft > 0 && oControl.kLeftPushedSteps > 5 && oControl.kDown == 0 && oControl.kUp == 0)
    {
        if (global.curropt == 0 && global.opsoundvolume > 0)
        {
            global.opsoundvolume -= 1
            alarm[1] = 30
            event_user(2)
        }
        if (global.curropt == 1 && global.opmusicvolume > 0)
        {
            global.opmusicvolume -= 1
            mus_current_update_volume()
            event_user(2)
        }
    }
    if (oControl.kRight > 0 && oControl.kRightPushedSteps > 5 && oControl.kDown == 0 && oControl.kUp == 0)
    {
        if (global.curropt == 0 && global.opsoundvolume < 100)
        {
            global.opsoundvolume += 1
            alarm[1] = 30
            event_user(2)
        }
        if (global.curropt == 1 && global.opmusicvolume < 100)
        {
            global.opmusicvolume += 1
            mus_current_update_volume()
            event_user(2)
        }
    }
    if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0)
    {
        if (global.curropt == 3)
        {
            save_gameoptions()
            instance_create(50, 92, oOptionsMain)
            instance_destroy()
            sfx_play(sndMenuSel)
        }
    }
}
timer -= 1
if (timer < 0)
    timer = 8
