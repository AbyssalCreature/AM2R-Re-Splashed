if active
{
    if (oControl.kDown > 0 && (oControl.kDownPushedSteps == 0 || (oControl.kDownPushedSteps > 30 && timer == 0)) && editing == 0)
    {
        global.curropt += 1
        if (global.curropt > lastitem)
            global.curropt = 0
        while (canedit[global.curropt] == 0)
            global.curropt += 1
        if (global.curropt > lastitem)
            global.curropt = 0
        targety = ((op[global.curropt].y + 8) + 8)
        if (targety > 288)
            targety = 288
        sfx_play(sndMenuMove)
        global.tiptext = tip[global.curropt]
    }
    if (oControl.kUp > 0 && (oControl.kUpPushedSteps == 0 || (oControl.kUpPushedSteps > 30 && timer == 0)) && editing == 0)
    {
        global.curropt -= 1
        if (global.curropt < 0)
            global.curropt = lastitem
        while (canedit[global.curropt] == 0)
            global.curropt -= 1
        if (global.curropt < 0)
            global.curropt = lastitem
        targety = ((op[global.curropt].y + 8) + 8)
        if (targety > 288)
            targety = 288
        sfx_play(sndMenuMove)
        global.tiptext = tip[global.curropt]
    }
    if (((oControl.kLeft > 0 && oControl.kLeftPushedSteps == 0) || (oControl.kRight > 0 && oControl.kRightPushedSteps == 0)) && oControl.kDown == 0 && oControl.kUp == 0)
    {
        if (global.curropt == 0)
        {
            global.opxjoyvib = (!global.opxjoyvib)
            sfx_play(sndMenuMove)
            event_user(2)
        }
        if (global.curropt == 2)
        {
            global.opanalogwalk = (!global.opanalogwalk)
            sfx_play(sndMenuMove)
            event_user(2)
        }
    }
    if (oControl.kLeft > 0 && oControl.kLeftPushedSteps > 5 && oControl.kDown == 0 && oControl.kUp == 0)
    {
        if (global.curropt == 1 && global.opxjoydz > 10)
        {
            global.opxjoydz -= 1
            event_user(2)
        }
    }
    if (oControl.kRight > 0 && oControl.kRightPushedSteps > 5 && oControl.kDown == 0 && oControl.kUp == 0)
    {
        if (global.curropt == 1 && global.opxjoydz < 100)
        {
            global.opxjoydz += 1
            event_user(2)
        }
    }
    if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0 && canedit[global.curropt] && global.curropt <= 13 && global.curropt > 2 && editing == 0)
    {
        if (editing == 0)
        {
            editing = 1
            alarm[2] = 300
            io_clear()
            readjoy = 0
            alarm[1] = 20
            op[global.curropt].editing = 1
            sfx_play(sndMenuSel)
        }
    }
    if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0)
    {
        if (global.curropt == 14)
        {
            set_default_xjoypad()
            event_user(2)
            sfx_play(sndMenuSel)
        }
        if (global.curropt == 15)
        {
            save_gameoptions()
            view_object[0] = noone
            view_yview[0] = 0
            instance_create(50, 92, oOptionsControl)
            instance_destroy()
            sfx_play(sndMenuSel)
        }
    }
    if (editing && readjoy)
    {
        if (check_xjoybtn() > 0 && global.curropt > 1)
        {
            if (global.curropt < 11 || (global.curropt == 11 && global.opxjoybtn_menu1 != check_xjoybtn() && global.opxjoybtn_menu2 != check_xjoybtn()))
            {
                remap_duplicate_xjoybtn(check_xjoybtn())
                map_xjoybtn(global.curropt, check_xjoybtn())
            }
            else if (global.curropt > 11 && global.opxjoybtn_str != check_xjoybtn())
            {
                remap_duplicate_xjoybtnmenu(check_xjoybtn())
                map_xjoybtn(global.curropt, check_xjoybtn())
            }
            editing = 0
            readjoy = 0
            op[global.curropt].editing = 0
            event_user(2)
            sfx_play(sndMenuMove)
            active = 0
            alarm[0] = 2
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
