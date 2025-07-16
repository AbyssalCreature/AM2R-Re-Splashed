if (oControl.mod_fusion == 1 && global.shaders_compiled && os_type != os_android)
{
    if (oControl.ErisPalette != -1)
        pal_swap_set(oControl.ErisPalette, 1, 0)
}
draw_self()
if (flashing > 0 || (state == 1 && statetime > 240))
{
    draw_set_blend_mode(bm_add)
    repeat (2)
        draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, -1, (flashing * 0.1))
    draw_set_blend_mode(bm_normal)
}
if oErisHead.boosting
{
    draw_set_blend_mode(bm_add)
    if (oErisHead.fxtimer == 0 || oErisHead.fxtimer == 1)
        draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, c_green, (1.1 + oErisHead.fxtimer * 0.2))
    if (oErisHead.fxtimer == 2 || oErisHead.fxtimer == 3)
    {
        repeat (2)
        {
            draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, c_yellow, 1)
            draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, c_white, 1)
        }
    }
    if (oErisHead.fxtimer == 4 || oErisHead.fxtimer == 5)
    {
        repeat (2)
            draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, c_red, 1)
    }
    draw_set_blend_mode(bm_normal)
}
shader_reset()
