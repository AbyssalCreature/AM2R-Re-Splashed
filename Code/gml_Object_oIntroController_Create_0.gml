alarm[0] = 150;
txt = get_text("Title", "ControllerRecommended");

if (os_type == os_linux && global.opfullscreen)
{
    window_set_fullscreen(false);
    window_set_fullscreen(true);
}
