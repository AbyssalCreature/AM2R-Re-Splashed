if (oControl.mod_fusion == 1 && global.shaders_compiled && os_type != os_android)
{
    if (oControl.TorizoPalette != -1)
        pal_swap_set(oControl.TorizoPalette, 1, 0)
}
draw_sprite_ext(sprite_index, -1, x, y, facing, 1, 0, image_blend, 1)
if flashing
{
    draw_sprite_ext(sprite_index, -1, x, y, facing, 1, image_angle, make_color_rgb((255 - (fxtimer * 63)), (255 - (fxtimer * 63)), (255 - (fxtimer * 63))), 1)
    draw_set_blend_mode(bm_add)
    repeat (2)
        draw_sprite_ext(sprite_index, -1, x, y, facing, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
    draw_set_blend_mode(bm_normal)
}
if (state == 5)
{
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(sTorizoDiveJetFX, -1, x, y, facing, 1, 0, -1, 1)
    draw_set_blend_mode(bm_normal)
}
shader_reset()
