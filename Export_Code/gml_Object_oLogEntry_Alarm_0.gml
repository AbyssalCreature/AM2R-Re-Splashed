if (global.gotolog == logid)
{
    global.curropt = optionid
    with (oLogScreenControl)
    {
        expanded = 1
        event_user(2)
        x = (((view_wview[0] / 2) + 150) + (3 * (widescreen_space / 2)))
    }
}
