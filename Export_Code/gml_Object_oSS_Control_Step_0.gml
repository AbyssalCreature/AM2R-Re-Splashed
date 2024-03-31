if (active && oControl.kMenu2 && oControl.kMenu2PushedSteps == 0 && instance_number(oSubScrChange) == 0 && canchange)
{
    if (global.ssmode == 3)
    {
        save_gameoptions()
        with (oPauseMenuOptions)
            active = 0
        with (oOptionsMain)
            active = 0
        with (oOptionsDisplay)
        {
            if (active != 0)
            {
                active = 0
                load_resources()
            }
        }
        with (oOptionsSound)
            active = 0
        with (oOptionsControl)
            active = 0
        with (oOptionsKeyboard)
            active = 0
        with (oOptionsJoypad)
            active = 0
        with (oOptionsQuit)
            active = 0
        with (oOptionsReload)
            active = 0
        with (oOptionsExtras)
            active = 0
        with (oOptionsMW)
            active = 0
    }
    if (global.ssmode == 2)
    {
        with (oLogScreenControl)
            active = 0
    }
    if (global.ssmode == 1)
    {
        with (oSubscreenMenu)
            active = 0
    }
    if (global.ssmode == 0)
    {
        with (oMapCursor)
            active = 0
    }
    instance_create(x, y, oSubScrChange)
}
if (os_type == os_android && os_is_paused())
    alarm[1] = 1
if (!surface_exists(s_map))
{
    surface_free(s_map)
    s_map = surface_create(2048, 1024)
    surface_set_target(s_map)
    draw_surface_map()
    surface_reset_target()
}
