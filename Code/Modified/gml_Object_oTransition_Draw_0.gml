if (global.transitiontype == 0 || global.transitiontype == 1)
{
    if surface_exists(oControl.screen_surface)
        draw_surface_ext(oControl.screen_surface, ((-oControl.widescreen_space) / 2), 0, 1, 1, 0, -1, (1 - fade))
}
