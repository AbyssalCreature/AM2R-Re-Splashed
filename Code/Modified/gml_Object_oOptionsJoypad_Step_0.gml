with (oOptionsJoypad)
{
    if active
    {
        if (oControl.kDown > 0 && (oControl.kDownPushedSteps == 0 || (oControl.kDownPushedSteps > 30 && timer == 0)) && editing == 0)
        {
            global.curropt += 1
            if (global.curropt > lastitem)
                global.curropt = 1
            while (canedit[global.curropt] == 0)
                global.curropt += 1
            if (global.curropt > lastitem)
                global.curropt = 1
            targety = ((op[global.curropt].y + 8) + 8)
            if (op[6].visible == false)
            {
                if (targety > 336)
                    targety = 336
            }
            else if (os_type != os_android)
            {
                if (targety > 400)
                    targety = 400
            }
            else if (targety > 384)
                targety = 384
            sfx_play(sndMenuMove)
            global.tiptext = tip[global.curropt]
        }
        if (oControl.kUp > 0 && (oControl.kUpPushedSteps == 0 || (oControl.kUpPushedSteps > 30 && timer == 0)) && editing == 0)
        {
            global.curropt -= 1
            if (global.curropt < 1)
                global.curropt = lastitem
            while (canedit[global.curropt] == 0)
                global.curropt -= 1
            if (global.curropt < 1)
                global.curropt = lastitem
            targety = ((op[global.curropt].y + 8) + 8)
            if (op[6].visible == false)
            {
                if (targety > 336)
                    targety = 336
            }
            else if (os_type != os_android)
            {
                if (targety > 400)
                    targety = 400
            }
            else if (targety > 384)
                targety = 384
            sfx_play(sndMenuMove)
            global.tiptext = tip[global.curropt]
        }
        if (((oControl.kLeft > 0 && oControl.kLeftPushedSteps == 0) || (oControl.kRight > 0 && oControl.kRightPushedSteps == 0)) && oControl.kDown == 0 && oControl.kUp == 0)
        {
            if (global.curropt == 0)
            {
                global.openablejoy = (!global.openablejoy)
                sfx_play(sndMenuMove)
                event_user(2)
            }
            if (global.curropt == 2)
            {
                global.opanalogwalk = (!global.opanalogwalk)
                sfx_play(sndMenuMove)
                event_user(2)
            }
            if (global.curropt == 5)
            {
                global.dpad_rebind = (!global.dpad_rebind)
                sfx_play(sndMenuMove)
                event_user(2)
                event_user(3)
            }
            if (os_type == os_android)
            {
                if (global.curropt == 3)
                {
                    global.opanalog_stick = (!global.opanalog_stick)
                    sfx_play(sndMenuMove)
                    event_user(2)
                }
                if (global.curropt == 4)
                {
                    global.opanalog_invert = (!global.opanalog_invert)
                    sfx_play(sndMenuMove)
                    event_user(2)
                }
            }
        }
        if (oControl.kLeft > 0 && oControl.kLeftPushedSteps > 5 && oControl.kDown == 0 && oControl.kUp == 0)
        {
            if (global.curropt == 1 && global.opdeadzone > 0)
            {
                global.opdeadzone -= 1
                event_user(2)
            }
        }
        if (oControl.kRight > 0 && oControl.kRightPushedSteps > 5 && oControl.kDown == 0 && oControl.kUp == 0)
        {
            if (global.curropt == 1 && global.opdeadzone < 100)
            {
                global.opdeadzone += 1
                event_user(2)
            }
        }
        if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0 && canedit[global.curropt] && global.curropt <= 20 && ((os_type != os_android && global.curropt > 2 && global.curropt != 5) || (os_type == os_android && global.curropt > 4)) && editing == 0)
        {
            if (editing == 0)
            {
                editing = 1
                alarm[2] = 300
                io_clear()
                readjoy = 0
                if global.joydetected
                    alarm[1] = 20
                op[global.curropt].editing = 1
                sfx_play(sndMenuSel)
            }
        }
        if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0)
        {
            if (global.curropt == 21)
            {
                set_default_joypad()
                event_user(2)
                sfx_play(sndMenuSel)
                if (os_type != os_android)
                {
                    instance_create(50, 92, oOptionsJoypad)
                    instance_destroy()
                }
            }
            if (global.curropt == 22)
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
            if (os_type != os_android && os_type != os_linux)
            {
                if (global.curropt == 3 && choose_axis() != -1)
                {
                    remap_duplicate_joyaxis(choose_axis())
                    map_joyaxisbtn(global.curropt, choose_axis())
                    if (global.opjoybtn_xax == 6)
                        global.opjoybtn_yax = 7
                    editing = 0
                    readjoy = 0
                    op[global.curropt].editing = 0
                    event_user(2)
                    sfx_play(sndMenuMove)
                }
                if (global.curropt == 4 && choose_axis() != -1)
                {
                    remap_duplicate_joyaxis(choose_axis())
                    map_joyaxisbtn(global.curropt, choose_axis())
                    if (choose_axis() == 6)
                    {
                        global.opjoybtn_xax = 6
                        global.opjoybtn_yax = 7
                    }
                    editing = 0
                    readjoy = 0
                    op[global.curropt].editing = 0
                    event_user(2)
                    sfx_play(sndMenuMove)
                }
            }
            else if (os_type == os_linux)
            {
                if (global.curropt == 3 && choose_axis_linux() != -1)
                {
                    if (global.opjoybtn_yax == choose_axis_linux())
                        global.opjoybtn_yax = global.opjoybtn_xax
                    global.opjoybtn_xax = choose_axis_linux()
                    editing = 0
                    readjoy = 0
                    op[global.curropt].editing = 0
                    event_user(2)
                    sfx_play(sndMenuMove)
                }
                if (global.curropt == 4 && choose_axis_linux() != -1)
                {
                    if (global.opjoybtn_xax == choose_axis_linux())
                        global.opjoybtn_xax = global.opjoybtn_yax
                    global.opjoybtn_yax = choose_axis_linux()
                    editing = 0
                    readjoy = 0
                    op[global.curropt].editing = 0
                    event_user(2)
                    sfx_play(sndMenuMove)
                }
            }
            if (check_joybtn(global.opjoyid) > 0 && global.curropt > 3)
            {
                if (global.curropt < 18 || (global.curropt == 18 && global.opjoybtn_menu1 != check_joybtn(global.opjoyid) && global.opjoybtn_menu2 != check_joybtn(global.opjoyid)))
                {
                    remap_duplicate_joybtn(check_joybtn(global.opjoyid))
                    map_joyaxisbtn(global.curropt, check_joybtn(global.opjoyid))
                }
                else if (global.curropt > 18 && global.opjoybtn_str != check_joybtn(global.opjoyid))
                {
                    remap_duplicate_joybtnmenu(check_joybtn(global.opjoyid))
                    map_joyaxisbtn(global.curropt, check_joybtn(global.opjoyid))
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
}
