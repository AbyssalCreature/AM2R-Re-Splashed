widescreen = oControl.widescreen
widescreen_space = oControl.widescreen_space
if active
{
    if (oControl.kDown && oControl.kDownPushedSteps == 0)
    {
        if (expanded == 0)
        {
            global.curropt += 1
            if (global.curropt > (dlognum - 1))
                global.curropt = 0
            event_user(0)
            sfx_play(sndMenuMove)
        }
    }
    if (oControl.kUp && oControl.kUpPushedSteps == 0)
    {
        if (expanded == 0)
        {
            global.curropt -= 1
            if (global.curropt < 0)
                global.curropt = (dlognum - 1)
            event_user(0)
            sfx_play(sndMenuMove)
        }
    }
    if ((oControl.kDown > 0 && oControl.kDownPushedSteps == 0) || (scrolltimer == 0 && oControl.kDown && oControl.kDownPushedSteps > 20))
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
    if ((oControl.kUp > 0 && oControl.kUpPushedSteps == 0) || (scrolltimer == 0 && oControl.kUp && oControl.kUpPushedSteps > 20))
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
    if (oControl.kRight > 0 && oControl.kRightPushedSteps == 0 && expanded == 0)
    {
        category += 1
        if (category > 4)
            category = 0
        create_log_category(category)
        event_user(0)
        category_text = cat[category]
        sfx_play(sndMenuMove)
    }
    if (oControl.kLeft > 0 && oControl.kLeftPushedSteps == 0 && expanded == 0)
    {
        category -= 1
        if (category < 0)
            category = 4
        create_log_category(category)
        event_user(0)
        category_text = cat[category]
        sfx_play(sndMenuMove)
    }
    if (oControl.kMenu1 && oControl.kMenu1PushedSteps == 0 && expandable)
        expanded = (!expanded)
    scrolltimer += 1
    if (scrolltimer > 8)
        scrolltimer = 0
    if expanded
        targety = 59
    else
        targety = 112
    if (currenty != targety)
        currenty += ((targety - currenty) / 4)
}
if (os_type == os_android && os_is_paused())
    alarm[1] = 1
if (!surface_exists(surf))
{
    surface_free(surf)
    surf = surface_create(130, 123)
    event_user(1)
}
