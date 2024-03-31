if surface_exists(oControl.screen_surface)
{
    draw_surface_ext(oControl.screen_surface, (0 - (oControl.widescreen_space / 2)), 0, 1, 1, 0, -1, (1 - fade))
    draw_surface_ext(oControl.screen_surface, ((-1 + random(2)) - (oControl.widescreen_space / 2)), (-1 + random(2)), 1, 1, 0, c_red, ((1 - fade) * 0.5))
    draw_surface_ext(oControl.screen_surface, ((-1 + random(2)) - (oControl.widescreen_space / 2)), (-1 + random(2)), 1, 1, 0, c_red, ((1 - fade) * 0.5))
}
draw_sprite_ext(sprite_index, -1, x, y, facing, 1, 0, -1, 1)
draw_set_alpha(whitefade)
draw_set_color(c_white)
draw_rectangle((0 - (oControl.widescreen_space / 2)), 0, (330 + oControl.widescreen_space), 260, false)
draw_set_alpha(1)
