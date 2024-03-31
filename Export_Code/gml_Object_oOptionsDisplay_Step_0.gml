if active
{
    if (oControl.kDown > 0 && (oControl.kDownPushedSteps == 0 || (oControl.kDownPushedSteps > 30 && timer == 0)))
    {
        if (os_type == os_android)
        {
            switch global.curropt
            {
                case 0:
                    global.curropt = 10
                    break
                case 9:
                    global.curropt = 12
                    break
                case 11:
                    global.curropt = 3
                    break
                default:
                    global.curropt += 1
                    break
            }

        }
        else
        {
            switch global.curropt
            {
                case 2:
                    global.curropt = 10
                    break
                case 9:
                    global.curropt = 12
                    break
                case 11:
                    global.curropt = 3
                    break
                default:
                    global.curropt += 1
                    break
            }

        }
        if (global.curropt > lastitem)
            global.curropt = 0
        while (global.canedit[global.curropt] == 0)
            global.curropt += 1
        targety = ((op[global.curropt].y + 8) + 8)
        if (targety > (256 + (sep * 2)) && op[7].visible)
            targety = (256 + (sep * 2))
        if (targety > (240 + (sep * 2)) && (!op[7].visible))
            targety = (240 + (sep * 2))
        if (os_type == os_android)
        {
            if (targety > 224)
                targety = 224
        }
        sfx_play(sndMenuMove)
        global.tiptext = tip[global.curropt]
    }
    if (oControl.kUp > 0 && (oControl.kUpPushedSteps == 0 || (oControl.kUpPushedSteps > 30 && timer == 0)))
    {
        if (os_type == os_android)
        {
            switch global.curropt
            {
                case 3:
                    global.curropt = 11
                    break
                case 10:
                    global.curropt = 0
                    break
                case 12:
                    global.curropt = 9
                    break
                default:
                    global.curropt -= 1
                    break
            }

        }
        else
        {
            switch global.curropt
            {
                case 3:
                    global.curropt = 11
                    break
                case 10:
                    global.curropt = 2
                    break
                case 12:
                    global.curropt = 9
                    break
                default:
                    global.curropt -= 1
                    break
            }

        }
        if (global.curropt < 0)
            global.curropt = lastitem
        while (global.canedit[global.curropt] == 0)
            global.curropt -= 1
        targety = ((op[global.curropt].y + 8) + 8)
        if (targety > (256 + (sep * 2)) && op[7].visible)
            targety = (256 + (sep * 2))
        if (targety > (240 + (sep * 2)) && (!op[7].visible))
            targety = (240 + (sep * 2))
        if (os_type == os_android)
        {
            if (targety > 208)
                targety = 208
        }
        sfx_play(sndMenuMove)
        global.tiptext = tip[global.curropt]
    }
    if (oControl.kLeft > 0 && oControl.kLeftPushedSteps == 0 && oControl.kDown == 0 && oControl.kUp == 0)
    {
        if (global.curropt == 5)
        {
            global.ophudshowmetrcount -= 1
            if (global.ophudshowmetrcount < 0)
                global.ophudshowmetrcount = 2
        }
        if (global.curropt == 1)
        {
            global.opscale -= 1
            if (global.opfullscreen && global.opscale < 0)
                global.opscale = 4
            if (!global.opfullscreen)
            {
                if (global.opscale < 1)
                    global.opscale = 4
                set_window_scale(global.opscale)
            }
        }
        if (global.curropt == 7)
        {
            oControl.mod_buttonsconfig -= 1
            if (os_type != os_android && oControl.mod_buttonsconfig < 0)
                oControl.mod_buttonsconfig = 3
            if (os_type == os_android && oControl.mod_buttonsconfig < 0)
                oControl.mod_buttonsconfig = 5
            event_user(2)
            event_user(3)
            event_user(4)
        }
        if (global.curropt == 9)
        {
            global.currentlanguage -= 1
            if (global.currentlanguage < 0)
                global.currentlanguage = (langno - 1)
            event_user(2)
            event_user(3)
            event_user(4)
            global.tiptext = tip[global.curropt]
        }
    }
    if (oControl.kRight > 0 && oControl.kRightPushedSteps == 0 && oControl.kDown == 0 && oControl.kUp == 0)
    {
        if (global.curropt == 5)
        {
            global.ophudshowmetrcount += 1
            if (global.ophudshowmetrcount > 2)
                global.ophudshowmetrcount = 0
        }
        if (global.curropt == 1)
        {
            global.opscale += 1
            if (global.opfullscreen && global.opscale > 4)
                global.opscale = 0
            if (!global.opfullscreen)
            {
                if (global.opscale > 4)
                    global.opscale = 1
                set_window_scale(global.opscale)
            }
        }
        if (global.curropt == 7)
        {
            oControl.mod_buttonsconfig += 1
            if (os_type != os_android && oControl.mod_buttonsconfig > 3)
                oControl.mod_buttonsconfig = 0
            if (os_type == os_android && oControl.mod_buttonsconfig > 5)
                oControl.mod_buttonsconfig = 0
            event_user(2)
            event_user(3)
            event_user(4)
        }
        if (global.curropt == 9)
        {
            global.currentlanguage += 1
            if (global.currentlanguage > (langno - 1))
                global.currentlanguage = 0
            event_user(2)
            event_user(3)
            event_user(4)
            global.tiptext = tip[global.curropt]
        }
    }
    if ((oControl.kLeft > 0 && oControl.kLeftPushedSteps == 0) || (oControl.kRight > 0 && oControl.kRightPushedSteps == 0 && global.curropt < 12 && oControl.kDown == 0 && oControl.kUp == 0))
    {
        if (global.curropt == 0)
        {
            if (os_type != os_android)
            {
                global.opfullscreen = (!global.opfullscreen)
                set_fullscreen(global.opfullscreen)
                if (!global.opfullscreen)
                {
                    global.opscale = 1
                    alarm[1] = 1
                }
            }
            else
            {
                global.opvsync = (!global.opvsync)
                sfx_play(sndMenuMove)
                display_reset(0, global.opvsync)
            }
        }
        if (global.curropt == 2)
        {
            global.opvsync = (!global.opvsync)
            display_reset(0, global.opvsync)
            if (!global.opfullscreen)
                set_window_scale(global.opscale)
        }
        if (global.curropt == 3)
            global.opshowhud = (!global.opshowhud)
        if (global.curropt == 4)
            global.ophudshowmap = (!global.ophudshowmap)
        if (global.curropt == 6)
            global.ophudshowhints = (!global.ophudshowhints)
        if (global.curropt == 8)
            global.ophudshowlogmsg = (!global.ophudshowlogmsg)
        if (global.curropt == 10)
        {
            if (global.sensitivitymode == 1)
                global.sensitivitymode = 0
            else
                global.sensitivitymode = 1
            event_user(2)
        }
        if (global.curropt == 11)
        {
            if (global.widescreen_enabled == 1)
                global.widescreen_enabled = 0
            else
                global.widescreen_enabled = 1
            if (room == rm_options)
            {
                oControl.widescreen = global.widescreen_enabled
                if (global.widescreen_enabled == 0)
                    view_visible[1] = false
                if (global.opfullscreen == 0)
                {
                    set_window_scale((window_get_height() / 240))
                    window_set_position((window_get_x() + ((53 - (global.widescreen_enabled * 106)) * (window_get_height() / 240))), window_get_y())
                }
                if (global.opfullscreen == 1 || os_type == os_android)
                    display_reset(0, global.opvsync)
            }
            event_user(2)
        }
        if (os_type == os_android)
        {
            if (global.curropt != 0)
                sfx_play(sndMenuMove)
        }
        else
            sfx_play(sndMenuMove)
        event_user(2)
    }
    if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0)
    {
        if (global.curropt == 12)
        {
            load_resources()
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
