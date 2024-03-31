fadeout = 1
active = 0
instance_create(0, 0, oMapScrBG3)
if (instance_exists(oOptionsSound) > 0)
{
    with (oOptionsSound)
        event_user(3)
}
if (global.ssmode == 3)
{
    save_gameoptions()
    with (oPauseMenuOptions)
        active = 0
    with (oOptionsMain)
        active = 0
    with (oOptionsDisplay)
        active = 0
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
