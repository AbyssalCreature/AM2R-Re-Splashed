if (oControl.mod_fusion == 1)
    pal_swap_set(oControl.TesterPalette, 1, 0)
draw_sprite_ext(sTesterBody, -1, x, y, 1, 1, image_angle, image_blend, image_alpha)
draw_sprite_ext(sTesterBody, -1, x, y, -1, 1, image_angle, image_blend, image_alpha)
draw_sprite_ext(sTesterBody, -1, x, y, -1, -1, image_angle, image_blend, image_alpha)
draw_sprite_ext(sTesterBody, -1, x, y, 1, -1, image_angle, image_blend, image_alpha)
if flashing
{
    draw_set_blend_mode(bm_add)
    repeat (2)
    {
        draw_sprite_ext(sTesterBody, -1, x, y, 1, 1, image_angle, image_blend, (flashing / 5))
        draw_sprite_ext(sTesterBody, -1, x, y, -1, 1, image_angle, image_blend, (flashing / 5))
        draw_sprite_ext(sTesterBody, -1, x, y, -1, -1, image_angle, image_blend, (flashing / 5))
        draw_sprite_ext(sTesterBody, -1, x, y, 1, -1, image_angle, image_blend, (flashing / 5))
    }
    draw_set_blend_mode(bm_normal)
}
shader_reset()
