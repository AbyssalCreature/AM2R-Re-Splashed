var i, ia;
if init
    exit
if ((os_type == os_android || os_type == os_linux) && global.joydetected == 0)
{
    for (i = 0; i < gamepad_get_device_count(); i++)
    {
        if gamepad_is_connected(i)
        {
            for (ia = 0; ia < gamepad_button_count(i); ia++)
            {
                if gamepad_button_check(i, ia)
                {
                    global.opjoyid = i
                    global.joydetected = 1
                }
            }
            for (ia = 0; ia < gamepad_axis_count(i); ia++)
            {
                if (gamepad_axis_value(i, ia) != 0)
                {
                    global.opjoyid = i
                    global.joydetected = 1
                }
            }
        }
    }
}
if widescreen
    widescreen_space = 106
else
{
    widescreen_space = 0
    view_visible[1] = false
}
