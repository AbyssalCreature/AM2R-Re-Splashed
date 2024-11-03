if (!surface_exists(screen_surface))
    screen_surface = surface_create((512 + widescreen_space), 256)
surface_set_target(screen_surface)
draw_clear(c_black)
if widescreen
{
    if surface_exists(widescreen_surface)
        draw_surface(widescreen_surface, 0, 0)
}
else if surface_exists(application_surface)
    draw_surface(application_surface, 0, 0)
surface_reset_target()
if widescreen
{
    if surface_exists(widescreen_surface)
        surface_save(widescreen_surface, (working_directory + "/tempscr"))
}
else if surface_exists(application_surface)
    surface_save(application_surface, (working_directory + "/tempscr"))
