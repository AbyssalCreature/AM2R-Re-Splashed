if (oControl.mod_fusion == 1 || oControl.MonsterPalettesFusionOnly == 0)
    pal_swap_set(oControl.QueenPalette, 1, 0)
draw_sprite_ext(sQueenBelly, -1, x, y, 1, 1, image_angle, -1, 0.5)
if (!flashing)
    draw_sprite_ext(sQueenRibs, -1, x, y, 1, 1, image_angle, -1, 1)
else
{
    draw_sprite_ext(sQueenRibs, -1, x, y, 1, 1, image_angle, make_color_rgb((255 - (fxtimer * 63)), (255 - (fxtimer * 63)), (255 - (fxtimer * 63))), 1)
    draw_set_blend_mode(bm_add)
    repeat (2)
        draw_sprite_ext(sQueenRibs, -1, x, y, 1, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
    draw_set_blend_mode(bm_normal)
}
shader_reset()
