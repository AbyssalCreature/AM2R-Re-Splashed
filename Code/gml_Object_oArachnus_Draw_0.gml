if (oControl.mod_fusion == 1)
    pal_swap_set(oControl.ArachnusPalette, 1, 0)
if (state == 4 || state == 9)
{
    draw_sprite_ext(sArachnusBall, -1, x, (y - 16), facing, 1, ((-angle) * facing), make_color_rgb(255, (255 - (angry / 1.5)), (255 - (angry / 1.5))), 1)
    if flashing
    {
        draw_sprite_ext(sArachnusBall, -1, x, (y - 16), facing, 1, ((-angle) * facing), make_color_rgb(220, 220, 0), 1)
        draw_set_blend_mode(bm_add)
        draw_sprite_ext(sArachnusBall, -1, x, (y - 16), facing, 1, ((-angle) * facing), -1, (1 - (fxtimer * 0.25)))
        draw_set_blend_mode(bm_normal)
    }
}
else
{
    draw_sprite_ext(sprite_index, -1, (x + shakeoffset), y, facing, 1, 0, make_color_rgb(255, (255 - (angry / 1.5)), (255 - (angry / 1.5))), 1)
    if (flashing && state != 90 && state != 100)
    {
        draw_sprite_ext(sprite_index, -1, x, y, facing, 1, image_angle, make_color_rgb(220, 220, 0), 1)
        draw_set_blend_mode(bm_add)
        draw_sprite_ext(sprite_index, -1, x, y, facing, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
        draw_set_blend_mode(bm_normal)
    }
    if (flashing && (state == 90 || state == 100))
    {
        draw_sprite_ext(sprite_index, -1, (x + shakeoffset), y, facing, 1, image_angle, make_color_rgb((255 - (fxtimer * 63)), (255 - (fxtimer * 63)), (255 - (fxtimer * 63))), 1)
        draw_set_blend_mode(bm_add)
        repeat (2)
            draw_sprite_ext(sprite_index, -1, (x + shakeoffset), y, facing, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
        draw_set_blend_mode(bm_normal)
    }
}
shader_reset()
