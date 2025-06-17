if (oControl.mod_fusion == 1 && global.shaders_compiled && os_type != os_android)
{
    if (oControl.TankPalette != -1)
        pal_swap_set(oControl.TankPalette, 1, 0)
}
draw_sprite_ext(sprite_index, -1, x, y, 1, 1, image_angle, -1, 1)
if flashing
{
    draw_set_blend_mode(bm_add)
    repeat (2)
        draw_sprite_ext(sprite_index, -1, x, y, 1, 1, image_angle, -1, (flashing / 5))
    draw_set_blend_mode(bm_normal)
}
