if (state == 0)
{
    if (offset > 0)
        offset -= 16
    else
    {
        state = 1
        view_object[0] = noone
        view_yview[0] = 0
    }
}
if (state == 1)
{
    if (oControl.kUp > 0 && oControl.kUpPushedSteps == 0)
    {
        global.ssmode = 0
        event_user(0)
    }
    if (oControl.kRight > 0 && oControl.kRightPushedSteps == 0)
    {
        global.ssmode = 1
        event_user(0)
    }
    if (oControl.kLeft > 0 && oControl.kLeftPushedSteps == 0)
    {
        global.ssmode = 2
        event_user(0)
    }
    if (oControl.kDown > 0 && oControl.kDownPushedSteps == 0)
    {
        global.ssmode = 3
        event_user(0)
    }
}
if (state == 2)
{
    if (offset < 160)
        offset += 16
    else
        event_user(1)
}
