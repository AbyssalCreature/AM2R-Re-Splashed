if active
{
    if (oControl.kDown > 0 && (oControl.kDownPushedSteps == 0 || (oControl.kDownPushedSteps > 30 && timer == 0)))
    {
        global.curropt += 1
        if (global.curropt > lastitem)
            global.curropt = 0
        while (canedit[global.curropt] == 0)
            global.curropt += 1
        if (global.curropt > lastitem)
            global.curropt = 0
        targety = op[global.curropt].y + lastitem
        if (targety > vTargetY)
            targety = vTargetY
        sfx_play(sndMenuMove)
        global.tiptext = tip[global.curropt]
    }
    if (oControl.kUp > 0 && (oControl.kUpPushedSteps == 0 || (oControl.kUpPushedSteps > 30 && timer == 0)))
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
        targety = op[global.curropt].y + lastitem
        if (targety > vTargetY)
            targety = vTargetY
        sfx_play(sndMenuMove)
        global.tiptext = tip[global.curropt]
    }
    if (oControl.kLeft > 0 && oControl.kLeftPushedSteps == 0 && oControl.kDown == 0 && oControl.kUp == 0)
    {
        if global.shaders_compiled
        {
            if (global.curropt == num_bwfilter)
            {
                oControl.palette_number--
                scr_shader_control()
            }
            if (global.curropt == num_hud)
            {
                oControl.hudoption--
                if (oControl.hudoption < 0)
                    oControl.hudoption = 2
                sfx_play(sndMenuMove)
                event_user(2)
            }
            if (global.curropt == num_color)
            {
                oControl.guicolor--
                if (oControl.guicolor < 1)
                    oControl.guicolor = 16
                sfx_play(sndMenuMove)
                event_user(2)
            }
            if (global.curropt == num_palette)
            {
                oControl.palette--
                if (oControl.palette < 0)
                    oControl.palette = 1
                sfx_play(sndMenuMove)
                event_user(2)
            }
            if (global.curropt == num_suit)
            {
                oControl.preferredcolor--
                if (oControl.preferredcolor < 1)
                    oControl.preferredcolor = 17
                sfx_play(sndMenuMove)
                event_user(2)
            }
        }
    }
    if (oControl.kRight > 0 && oControl.kRightPushedSteps == 0 && oControl.kDown == 0 && oControl.kUp == 0)
    {
        if global.shaders_compiled
        {
            if (global.curropt == num_bwfilter)
            {
                oControl.palette_number++
                scr_shader_control()
            }
            if (global.curropt == num_hud)
            {
                oControl.hudoption++
                if (oControl.hudoption > 2)
                    oControl.hudoption = 0
                sfx_play(sndMenuMove)
                event_user(2)
            }
            if (global.curropt == num_color)
            {
                oControl.guicolor++
                if (oControl.guicolor > 16)
                    oControl.guicolor = 1
                sfx_play(sndMenuMove)
                event_user(2)
            }
            if (global.curropt == num_palette)
            {
                oControl.palette++
                if (oControl.palette > 1)
                    oControl.palette = 0
                sfx_play(sndMenuMove)
                event_user(2)
            }
            if (global.curropt == num_suit)
            {
                oControl.preferredcolor++
                if (oControl.preferredcolor > 17)
                    oControl.preferredcolor = 1
                sfx_play(sndMenuMove)
                event_user(2)
            }
        }
    }
    if ((oControl.kLeft > 0 && oControl.kLeftPushedSteps == 0) || (oControl.kRight > 0 && oControl.kRightPushedSteps == 0 && global.curropt < lastitem && oControl.kDown == 0 && oControl.kUp == 0))
    {
        if (global.curropt == num_baby)
            oControl.mod_earlybaby = (!oControl.mod_earlybaby)
        if global.shaders_compiled
        {
            if (global.curropt == num_MSRfusion)
                oControl.msr_fusionsuit = (!oControl.msr_fusionsuit)
            if (global.curropt == num_gamehud)
                oControl.gamehud = (!oControl.gamehud)
        }
        if (global.curropt == num_IGT)
            oControl.mod_IGT = (!oControl.mod_IGT)
        sfx_play(sndMenuMove)
        event_user(2)
    }
    if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0)
    {
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
}
if (targety != y)
    y += ((targety - y) / 10)
timer -= 1
if (timer < 0)
    timer = 8
