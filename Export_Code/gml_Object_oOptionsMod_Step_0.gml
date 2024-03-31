var keyBegin, key, keyboardLength;
if active
{
    if (oControl.kDown > 0 && (oControl.kDownPushedSteps == 0 || (oControl.kDownPushedSteps > 30 && timer == 0)) && (!editing))
    {
        global.curropt += 1
        if (global.curropt > lastitem)
            global.curropt = 0
        while (canedit[global.curropt] == 0)
            global.curropt += 1
        if (global.curropt > lastitem)
            global.curropt = 0
        targety = (op[global.curropt].y + lastitem)
        if (targety > vTargetY)
            targety = vTargetY
        sfx_play(sndMenuMove)
        global.tiptext = tip[global.curropt]
    }
    if (oControl.kUp > 0 && (oControl.kUpPushedSteps == 0 || (oControl.kUpPushedSteps > 30 && timer == 0)) && (!editing))
    {
        global.curropt -= 1
        if (global.curropt < 0)
            global.curropt = lastitem
        while (canedit[global.curropt] == 0)
        {
            global.curropt -= 1
            if (global.curropt < 0)
                global.curropt = lastitem
        }
        targety = (op[global.curropt].y + lastitem)
        if (targety > vTargetY)
            targety = vTargetY
        sfx_play(sndMenuMove)
        global.tiptext = tip[global.curropt]
    }
    if (oControl.kLeft > 0 && oControl.kLeftPushedSteps == 0 && oControl.kDown == 0 && oControl.kUp == 0)
    {
        if global.shaders_compiled
        {
            if (global.curropt == num_color)
            {
                oControl.preferredcolor--
                if (oControl.preferredcolor < 1)
                    oControl.preferredcolor = 17
                sfx_play(sndMenuMove)
                event_user(2)
            }
            if (global.curropt == num_palette)
            {
                oControl.palette--
                if (oControl.palette < 0)
                    oControl.palette = 3
                sfx_play(sndMenuMove)
                event_user(2)
            }
        }
        if (global.curropt == num_difficulty && instance_exists(oClient))
        {
            oClient.syncedDifficulty--
            menuDifficulty--
            if (oClient.syncedDifficulty < 0)
            {
                oClient.syncedDifficulty = 3
                menuDifficulty = 3
            }
            with (oClient)
                event_user(0)
            sfx_play(sndMenuMove)
            event_user(2)
        }
    }
    if (oControl.kRight > 0 && oControl.kRightPushedSteps == 0 && oControl.kDown == 0 && oControl.kUp == 0)
    {
        if global.shaders_compiled
        {
            if (global.curropt == num_color)
            {
                oControl.preferredcolor++
                if (oControl.preferredcolor > 17)
                    oControl.preferredcolor = 1
                sfx_play(sndMenuMove)
                event_user(2)
            }
            if (global.curropt == num_palette)
            {
                oControl.palette++
                if (oControl.palette > 3)
                    oControl.palette = 0
                sfx_play(sndMenuMove)
                event_user(2)
            }
        }
        if (global.curropt == num_difficulty && instance_exists(oClient))
        {
            oClient.syncedDifficulty++
            menuDifficulty++
            if (oClient.syncedDifficulty > 3)
            {
                oClient.syncedDifficulty = 0
                menuDifficulty = 0
            }
            with (oClient)
                event_user(0)
            sfx_play(sndMenuMove)
            event_user(2)
        }
    }
    if ((oControl.kLeft > 0 && oControl.kLeftPushedSteps == 0) || (oControl.kRight > 0 && oControl.kRightPushedSteps == 0 && global.curropt < lastitem && oControl.kDown == 0 && oControl.kUp == 0))
    {
        if (global.curropt == num_censorip)
            oControl.censorip = (!oControl.censorip)
        if (global.curropt == num_showname)
            showname = (!showname)
        if (global.curropt == num_selfpalette)
            oControl.useselfpalette = (!oControl.useselfpalette)
        if (global.curropt == num_elm && instance_exists(oClient))
        {
            oClient.elm = (!oClient.elm)
            elm = (!elm)
            with (oClient)
                event_user(1)
        }
        if (global.curropt == num_locklobby && instance_exists(oClient))
        {
            global.lobbyLocked = (!global.lobbyLocked)
            with (oClient)
                event_user(6)
        }
        if (global.curropt == num_saxmode && instance_exists(oClient))
        {
            global.saxmode = (!global.saxmode)
            with (oClient)
                event_user(7)
        }
        sfx_play(sndMenuMove)
        event_user(2)
    }
    keyBegin = oControl.kMenu1 > 0
    if (os_type != os_android)
        key = keyboard_check_pressed(vk_return)
    else
        key = oControl.kMenu1 > 0
    if ((key && oControl.kMenu1PushedSteps == 0) || (os_type != os_android && keyBegin && oControl.kMenu1PushedSteps == 0 && (!editing)))
    {
        if (global.curropt == num_ip && os_type != os_android)
        {
            editing = (!editing)
            op[num_ip].editing = editing
            if editing
                keyboard_string = ip
            sfx_play(sndMenuSel)
            event_user(2)
        }
        else if (global.curropt == num_ip && os_type == os_android)
        {
            if (!editing)
                msg = get_string_async("Type in the IP Address to connect to.", ip)
            editing = (!editing)
            op[num_ip].editing = editing
        }
        if (global.curropt == num_port && os_type != os_android)
        {
            editing = (!editing)
            op[num_port].editing = editing
            if editing
                keyboard_string = port
            sfx_play(sndMenuSel)
            event_user(2)
        }
        else if (global.curropt == num_port && os_type == os_android)
        {
            if (!editing)
                msg = get_integer_async("Type in the server port.", real(port))
            editing = (!editing)
            op[num_port].editing = editing
        }
        if (global.curropt == num_name && os_type != os_android)
        {
            editing = (!editing)
            op[num_name].editing = editing
            if editing
                keyboard_string = name
            sfx_play(sndMenuSel)
            event_user(2)
        }
        else if (global.curropt == num_name && os_type == os_android)
        {
            if (!editing)
                msg = get_string_async("Type in your nametag.", name)
            editing = (!editing)
            op[num_name].editing = editing
        }
        if (global.curropt == num_moderator && os_type != os_android)
        {
            editing = (!editing)
            op[num_moderator].editing = editing
            if editing
                keyboard_string = password
            sfx_play(sndMenuSel)
            event_user(2)
        }
        else if (global.curropt == num_moderator && os_type == os_android)
        {
            if (!editing)
                msg = get_integer_async("Type in your moderator password.", password)
            editing = (!editing)
            op[num_moderator].editing = editing
        }
        if (global.curropt == num_customseed && os_type != os_android)
        {
            editing = (!editing)
            op[num_customseed].editing = editing
            if editing
                keyboard_string = string(global.multiCustomSeed)
            sfx_play(sndMenuSel)
            event_user(2)
        }
        else if (global.curropt == num_customseed && os_type == os_android)
        {
            if (!editing)
                msg = get_integer_async("Type in your custom seed.", global.multiCustomSeed)
            editing = (!editing)
            op[num_customseed].editing = editing
        }
    }
    if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0)
    {
        if (global.curropt == num_connection)
        {
            if ((!instance_exists(oClient)) && global.canConnect)
            {
                instance_create(x, y, oClient)
                connectiontxt = "Disconnect"
                op[num_connection].label = connectiontxt
            }
            else
            {
                with (oClient)
                    instance_destroy()
                connectiontxt = "Connect"
                op[num_connection].label = connectiontxt
            }
            sfx_play(sndMenuSel)
            event_user(2)
        }
        if (global.curropt == num_seedgen)
        {
            if instance_exists(oClient)
            {
                randomize()
                oClient.seed = random_get_seed()
                random_set_seed(oClient.seed)
                send_seed()
            }
            sfx_play(sndMenuSel)
        }
        if (global.curropt == num_reset)
        {
            if instance_exists(oClient)
            {
                with (oClient)
                    event_user(5)
            }
            sfx_play(sndMenuSel)
        }
        if (global.curropt == lastitem)
        {
            save_gameoptions()
            view_object[0] = noone
            view_yview[0] = 0
            instance_create(50, 92, oOptionsMain)
            instance_destroy()
            sfx_play(sndMenuSel)
        }
    }
    if (editing && global.curropt == num_ip && os_type != os_android)
    {
        ip = keyboard_string
        op[num_ip].optext = ip
    }
    if (editing && global.curropt == num_port && os_type != os_android)
    {
        port = keyboard_string
        op[num_port].optext = port
    }
    if (editing && global.curropt == num_name && os_type != os_android)
    {
        keyboardLength = string_length(keyboard_string)
        if (keyboardLength > 15)
            keyboard_string = string_copy(keyboard_string, 1, 15)
        name = keyboard_string
        op[num_name].optext = name
    }
    if (editing && global.curropt == num_moderator && os_type != os_android)
    {
        keyboardLength = string_length(keyboard_string)
        if (keyboardLength > 15)
            keyboard_string = string_copy(keyboard_string, 1, 15)
        password = keyboard_string
        op[num_moderator].optext = password
    }
    if (editing && global.curropt == num_customseed && os_type != os_android)
    {
        keyboardLength = string_length(keyboard_string)
        if (keyboard_lastchar != "0" && keyboard_lastchar != "1" && keyboard_lastchar != "2" && keyboard_lastchar != "3" && keyboard_lastchar != "4" && keyboard_lastchar != "5" && keyboard_lastchar != "6" && keyboard_lastchar != "7" && keyboard_lastchar != "8" && keyboard_lastchar != "9" && keyboard_lastchar != "" && keyboard_lastchar != -1)
        {
            if (keyboard_lastkey != vk_backspace)
                keyboard_string = string_copy(keyboard_string, 1, (string_length(keyboard_string) - 1))
            keyboard_lastchar = ""
        }
        if (keyboardLength > 10)
            keyboard_string = string_copy(keyboard_string, 1, 10)
        global.multiCustomSeed = real(keyboard_string)
        op[num_customseed].optext = string(global.multiCustomSeed)
    }
}
if (targety != y)
    y += ((targety - y) / 10)
timer -= 1
if (timer < 0)
    timer = 8
if (instance_exists(oClient) && instance_exists(id) && instance_exists(connID))
{
    connectiontxt = "Disconnect"
    op[num_connection].label = connectiontxt
}
else if ((!instance_exists(oClient)) && instance_exists(id) && instance_exists(connID))
{
    connectiontxt = "Connect"
    op[num_connection].label = connectiontxt
}
if (!done)
{
    if global.moderator
    {
        op[num_difficulty].enabled = 1
        canedit[num_difficulty] = 1
        op[num_seedgen].enabled = 1
        canedit[num_seedgen] = 1
        op[num_elm].enabled = 1
        canedit[num_elm] = 1
        op[num_reset].enabled = 1
        canedit[num_reset] = 1
        op[num_customseed].enabled = 1
        canedit[num_customseed] = 1
        op[num_locklobby].enabled = 1
        canedit[num_locklobby] = 1
        op[num_saxmode].enabled = 1
        canedit[num_saxmode] = 1
    }
    else
    {
        op[num_difficulty].enabled = 0
        canedit[num_difficulty] = 0
        op[num_seedgen].enabled = 0
        canedit[num_seedgen] = 0
        op[num_elm].enabled = 0
        canedit[num_elm] = 0
        op[num_reset].enabled = 0
        canedit[num_reset] = 0
        op[num_customseed].enabled = 0
        canedit[num_customseed] = 0
        op[num_locklobby].enabled = 0
        canedit[num_locklobby] = 0
        op[num_saxmode].enabled = 0
        canedit[num_saxmode] = 0
    }
    switch menuDifficulty
    {
        case 0:
            op[num_difficulty].optext = "Easy"
            break
        case 1:
            op[num_difficulty].optext = "Normal"
            break
        case 2:
            op[num_difficulty].optext = "Hard"
            break
        case 3:
            op[num_difficulty].optext = "Fusion"
            break
    }

    switch elm
    {
        case 0:
            op[num_elm].optext = "Disabled"
            break
        case 1:
            op[num_elm].optext = "Enabled"
            break
    }

    switch global.lobbyLocked
    {
        case 0:
            op[num_locklobby].optext = "Open"
            break
        case 1:
            op[num_locklobby].optext = "Locked"
            break
    }

    switch global.saxmode
    {
        case 0:
            op[num_saxmode].optext = "Disabled"
            break
        case 1:
            op[num_saxmode].optext = "Enabled"
            break
    }

    if (oControl.censorip && (!op[num_ip].editing))
    {
        op[num_ip].optext = ""
        init = 1
    }
    if op[num_ip].editing
    {
        if (keyboard_check(vk_control) && keyboard_check_pressed(ord("V")))
            keyboard_string = clipboard_get_text()
    }
}
