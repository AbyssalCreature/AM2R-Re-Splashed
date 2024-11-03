if (global.ingame && oControl.displaygui && instance_exists(oCharacter))
{
    surface_set_target(oControl.gui_surface)
    draw_sprite_ext(sprite_index, image_index, ((160 - floor((sprite_get_width(sprite_index) / 2))) + (oControl.widescreen_space / 2)), 30, 1, 1, 0, -1, image_alpha)
    surface_reset_target()
}
