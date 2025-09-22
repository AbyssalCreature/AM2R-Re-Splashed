if active
{
    if (oControl.kDown > 0 && (oControl.kDownPushedSteps == 0 || (oControl.kDownPushedSteps > 30 && timer == 0)) && (!inputdel))
    {
        global.curropt += 1
        if (global.curropt > lastitem)
            global.curropt = 0
        while (canedit[global.curropt] == 0)
            global.curropt += 1
        targety = op[global.curropt].y + 8 + 8
        if (targety > 192)
            targety = 192
        sfx_play(sndMenuMove)
        global.tiptext = tip[global.curropt]
    }
    if (oControl.kUp > 0 && (oControl.kUpPushedSteps == 0 || (oControl.kUpPushedSteps > 30 && timer == 0)) && (!inputdel))
    {
        global.curropt -= 1
        if (global.curropt < 0)
            global.curropt = lastitem
        while (canedit[global.curropt] == 0)
            global.curropt -= 1
        targety = op[global.curropt].y + 8 + 8
        if (targety > 192)
            targety = 192
        sfx_play(sndMenuMove)
        global.tiptext = tip[global.curropt]
    }
    if (oControl.kLeft > 0 && oControl.kLeftPushedSteps == 0 && oControl.kDown == 0 && oControl.kUp == 0)
    {
        if (global.curropt == 3)
        {
            global.opspdstyle -= 1
            if (global.opspdstyle < 0)
                global.opspdstyle = 2
        }
        if (global.curropt == 1)
        {
            global.opmslstyle -= 1
            if (global.opmslstyle < 0)
                global.opmslstyle = 2
        }
        else if (global.curropt == 9)
        {
            if (floor(oControl.touch_scale) < 8)
            {
                oControl.touch_scale++
                sfx_play(sndMenuMove)
                event_user(2)
                inputdel = 30
            }
        }
    }
    if (oControl.kRight > 0 && oControl.kRightPushedSteps == 0 && oControl.kDown == 0 && oControl.kUp == 0)
    {
        if (global.curropt == 3)
        {
            global.opspdstyle += 1
            if (global.opspdstyle > 2)
                global.opspdstyle = 0
        }
        if (global.curropt == 1)
        {
            global.opmslstyle += 1
            if (global.opmslstyle > 2)
                global.opmslstyle = 0
        }
        else if (global.curropt == 9)
        {
            if (floor(oControl.touch_scale) > 1 && oTouchControls.st_radius < (display_get_height() / 3))
            {
                oControl.touch_scale--
                sfx_play(sndMenuMove)
                event_user(2)
                inputdel = 30
            }
        }
    }
    if (((oControl.kLeft > 0 && oControl.kLeftPushedSteps == 0) || (oControl.kRight > 0 && oControl.kRightPushedSteps == 0)) && ((os_type != os_android && global.curropt < 6) || ((os_type == os_android || os_type == os_linux) && global.curropt < 8)) && oControl.kDown == 0 && oControl.kUp == 0)
    {
        if (global.curropt == 0)
            global.opaimstyle = (!global.opaimstyle)
        if (global.curropt == 2)
            global.opmrpstyle = (!global.opmrpstyle)
        if (global.curropt == 4)
            global.opautoclimb = (!global.opautoclimb)
        if (global.curropt == 5)
            global.opautomorph = (!global.opautomorph)
        if (os_type == os_android && global.curropt == 6)
        {
            global.opxjoyvib = (!global.opxjoyvib)
            if global.opxjoyvib
                ctrl_vibrate(1, 1, 15)
        }
        if ((os_type == os_android || os_type == os_linux) && global.curropt == 7)
            global.compatibilitymode = (!global.compatibilitymode)
        sfx_play(sndMenuMove)
        event_user(2)
    }
    if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0)
    {
        if (os_type != os_android && global.curropt == 6)
        {
            save_gameoptions()
            view_object[0] = noone
            view_yview[0] = 0
            instance_create(50, 92, oOptionsKeyboard)
            instance_destroy()
            sfx_play(sndMenuSel)
        }
        if (global.curropt == 8 && canedit[8])
        {
            save_gameoptions()
            view_object[0] = noone
            view_yview[0] = 0
            if (os_type != os_android && os_type != os_linux && global.controltype == 2)
                instance_create(50, 92, oOptionsXJoypad)
            else if ((os_type == os_android || os_type == os_linux) && global.compatibilitymode == 0)
                instance_create(50, 92, oOptionsMogaJoypad)
            else
                instance_create(50, 92, oOptionsJoypad)
            instance_destroy()
            sfx_play(sndMenuSel)
        }
        if (global.curropt == 10)
        {
            save_gameoptions()
            view_object[0] = noone
            view_yview[0] = 0
            instance_create(50, 92, oOptionsMain)
            instance_destroy()
            sfx_play(sndMenuSel)
        }
    }
}
if (targety != y)
    y += ((targety - y) / 10)
timer -= 1
if (timer < 0)
    timer = 8
inputdel = max(0, (inputdel - 1))
