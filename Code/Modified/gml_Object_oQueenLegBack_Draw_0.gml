if (oControl.mod_fusion == 1 || oControl.MonsterPalettesFusionOnly == 0)
    pal_swap_set(oControl.QueenPalette, 2, 0)
if (!flashing)
    draw_sprite(spr_foot, -1, x, y)
else
{
    draw_sprite_ext(spr_foot, -1, x, y, 1, 1, image_angle, make_color_rgb((255 - (fxtimer * 63)), (255 - (fxtimer * 63)), (255 - (fxtimer * 63))), 1)
    draw_set_blend_mode(bm_add)
    repeat (2)
        draw_sprite_ext(spr_foot, -1, x, y, 1, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
    draw_set_blend_mode(bm_normal)
}
shader_reset()
