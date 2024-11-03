if active
{
    if (oControl.kDown && (oControl.kDownPushedSteps == 0 || (oControl.kDownPushedSteps > 30 && timer == 0)) && editing == 0)
    {
        global.curropt += 1
        if (global.curropt > lastitem)
            global.curropt = 0
        while (canedit[global.curropt] == 0)
            global.curropt += 1
        if (global.curropt > lastitem)
            global.curropt = 0
        targety = ((op[global.curropt].y + 8) + 8)
        if (targety > 304)
            targety = 304
        sfx_play(sndMenuMove)
        global.tiptext = tip[global.curropt]
    }
    if (oControl.kUp && (oControl.kUpPushedSteps == 0 || (oControl.kUpPushedSteps > 30 && timer == 0)) && editing == 0)
    {
        global.curropt -= 1
        if (global.curropt < 0)
            global.curropt = lastitem
        while (canedit[global.curropt] == 0)
            global.curropt -= 1
        if (global.curropt < 0)
            global.curropt = lastitem
        targety = ((op[global.curropt].y + 8) + 8)
        if (targety > 304)
            targety = 304
        sfx_play(sndMenuMove)
        global.tiptext = tip[global.curropt]
    }
    if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0 && canedit[global.curropt] && global.curropt <= 14 && editing == 0)
    {
        if (editing == 0)
        {
            editing = 1
            alarm[2] = 300
            io_clear()
            op[global.curropt].editing = 1
            sfx_play(sndMenuSel)
        }
    }
    if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0)
    {
        if (global.curropt == 15)
        {
            set_default_keys()
            event_user(2)
            sfx_play(sndMenuSel)
        }
        if (global.curropt == 16)
        {
            save_gameoptions()
            view_object[0] = noone
            view_yview[0] = 0
            instance_create(50, 92, oOptionsControl)
            instance_destroy()
            sfx_play(sndMenuSel)
        }
    }
    with (oSS_Fg)
    {
        active = 0
        alarm[0] = 5
    }
    with (oSS_Control)
    {
        active = 0
        alarm[0] = 5
    }
}
if (targety != y)
    y += ((targety - y) / 10)
timer -= 1
if (timer < 0)
    timer = 8
