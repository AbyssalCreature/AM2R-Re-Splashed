display_set_gui_size(-1, -1)
if (global.creditsmenuopt == 0)
    room_goto(rm_score)
else
{
    if (os_type == os_android)
        os_powersave_enable(1)
    global.creditsmenuopt = 0
    room_goto(titleroom)
}
