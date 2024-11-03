if (keyboard_check(vk_shift) && global.ingame == 1)
{
    viewmode += 1
    if (viewmode > 4)
        viewmode = 0
}
show_debug_overlay(viewmode == 1)
