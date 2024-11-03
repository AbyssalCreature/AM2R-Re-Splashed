if (global.joydetected == 1 || ((os_type == os_android || os_type == os_linux) && gamepad_is_connected(global.gamepadIndex)))
{
    op[8].enabled = 1
    canedit[8] = 1
    op[8].label = get_text("OptionsControl", "JoypadSettings")
}
if (global.joydetected == 0 && (!gamepad_is_connected(global.gamepadIndex)))
{
    op[8].enabled = 0
    canedit[8] = 0
    op[8].label = get_text("OptionsControl", "NoJoypad")
}
if (os_type == os_android)
    alarm[1] = 1
else
    alarm[1] = 120
