if active
{
    if ((oControl.kDown && oControl.kDownPushedSteps == 0) || (timer == 0 && oControl.kDown && oControl.kDownPushedSteps > 20))
    {
        if (expanded == 0)
        {
            global.curropt += 1
            if (global.curropt > (lognum - 1))
                global.curropt = 0
            event_user(0)
            sfx_play(sndMenuMove)
        }
    }
    if ((oControl.kUp && oControl.kUpPushedSteps == 0) || (timer == 0 && oControl.kUp && oControl.kUpPushedSteps > 20))
    {
        if (expanded == 0)
        {
            global.curropt -= 1
            if (global.curropt < 0)
                global.curropt = (lognum - 1)
            event_user(0)
            sfx_play(sndMenuMove)
        }
    }
    if ((oControl.kDown > 0 && oControl.kDownPushedSteps == 0) || (timer == 0 && oControl.kDown && oControl.kDownPushedSteps > 20))
    {
        if (expanded && scroll)
        {
            currentline += 1
            if (currentline > lines)
                currentline = lines
            event_user(1)
            sfx_play(sndMenuMove)
        }
    }
    if ((oControl.kUp > 0 && oControl.kUpPushedSteps == 0) || (timer == 0 && oControl.kUp && oControl.kUpPushedSteps > 20))
    {
        if (expanded && scroll)
        {
            currentline -= 1
            if (currentline < 0)
                currentline = 0
            event_user(1)
            sfx_play(sndMenuMove)
        }
    }
    if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0)
    {
        expanded = (!expanded)
        event_user(2)
    }
}
if (os_type == os_android && os_is_paused())
    alarm[1] = 1
if (!surface_exists(surf))
{
    surface_free(surf)
    surf = surface_create(149, 137)
    event_user(1)
}
targety = (logobj[global.curropt].y + 8)
if (targety != y)
    y = lerp(y, targety, 0.2)
if (targetx != x)
    x = lerp(x, targetx, 0.2)
if ((targetx - x) < 0.1 && (x - targetx) < 0.1)
    x = targetx
timer -= 1
if (timer < 0)
    timer = 8
