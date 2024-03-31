if (oControl.mod_fusion == 1)
    pal_swap_set(oControl.GenesisPalette, 1, 0)
if (!flashing)
{
    if (turning == 0)
        draw_sprite_ext(sprite_index, -1, x, y, facing, image_yscale, 0, image_blend, image_alpha)
    else
        draw_sprite_ext(sGenesisTurn, turnframe, x, y, facing, image_yscale, 0, image_blend, image_alpha)
}
if flashing
{
    if (turning == 0)
        draw_sprite_ext(sprite_index, -1, x, y, facing, image_yscale, 0, make_color_rgb(80, 80, 80), image_alpha)
    else
        draw_sprite_ext(sGenesisTurn, turnframe, x, y, facing, image_yscale, 0, make_color_rgb(80, 80, 80), image_alpha)
    draw_set_blend_mode(bm_add)
    repeat (3)
    {
        if (turning == 0)
            draw_sprite_ext(sprite_index, -1, x, y, facing, image_yscale, 0, image_blend, (image_alpha - (fxtimer * 0.25)))
        else
            draw_sprite_ext(sGenesisTurn, turnframe, x, y, facing, image_yscale, 0, image_blend, (image_alpha - (fxtimer * 0.25)))
    }
    draw_set_blend_mode(bm_normal)
}
shader_reset()
