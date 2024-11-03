if active
{
    if (state == 1)
    {
        if (oControl.kRight > 0 && oControl.kRightPushedSteps == 0)
        {
            global.curropt += 1
            if (global.curropt > lastitem)
                global.curropt = 0
            repeat (3)
            {
                if (global.gallery[global.curropt] == 0)
                    global.curropt += 1
                if (global.curropt > lastitem)
                    global.curropt = 0
            }
            sfx_play(sndMenuMove)
        }
        if (oControl.kLeft > 0 && oControl.kLeftPushedSteps == 0)
        {
            global.curropt -= 1
            if (global.curropt < 0)
                global.curropt = lastitem
            repeat (3)
            {
                if (global.gallery[global.curropt] == 0)
                    global.curropt -= 1
                if (global.curropt < 0)
                    global.curropt = lastitem
            }
            sfx_play(sndMenuMove)
        }
        if (oControl.kDown > 0 && oControl.kDownPushedSteps == 0)
        {
            global.curropt = 3
            sfx_play(sndMenuMove)
        }
        if (oControl.kUp > 0 && oControl.kUpPushedSteps == 0)
        {
            global.curropt = 0
            repeat (3)
            {
                if (global.gallery[global.curropt] == 0)
                    global.curropt += 1
            }
            sfx_play(sndMenuMove)
        }
        if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0)
        {
            sfx_play(sndMenuSel)
            if (global.curropt >= 0 && global.curropt <= lastitem)
                event_user(0)
            if (global.curropt == 3)
            {
                global.curropt = 5
                room_goto(titleroom)
            }
        }
    }
    if (state == 2)
    {
        if (img_fadeout == 0)
        {
            if (img_alpha < 1)
                img_alpha += 0.05
        }
        else if (img_alpha > 0)
            img_alpha -= 0.05
        else
        {
            active = 0
            alarm[0] = 5
            state = 1
        }
        if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0 && img_alpha == 1 && img_fadeout == 0)
            img_fadeout = 1
    }
}
