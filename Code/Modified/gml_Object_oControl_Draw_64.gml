var d;
if global.ingame
{
    if surface_exists(gui_surface)
    {
        if (global.ingame && displaygui && room != rm_transition && instance_exists(oCharacter))
        {
            d = application_get_position()
            draw_surface_ext(gui_surface, (displayx - d[0]), (displayy - d[1]), display_scale, display_scale, 0, -1, 1)
        }
    }
}
if (black > 0)
{
    draw_set_alpha(1)
    draw_set_color(c_black)
    draw_rectangle(0, 0, display_get_width(), display_get_height(), false)
}
