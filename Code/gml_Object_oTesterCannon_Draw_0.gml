if (oControl.mod_fusion == 1)
    pal_swap_set(oControl.TesterPalette, 1, 0)
if (damaged == 0)
{
    draw_sprite_ext(sprite_index, -1, (x + offx), (y + offy), 1, 1, image_angle, -1, 1)
    if flashing
    {
        draw_set_blend_mode(bm_add)
        repeat (2)
            draw_sprite_ext(sprite_index, -1, (x + offx), (y + offy), 1, 1, image_angle, -1, (flashing / 5))
        draw_set_blend_mode(bm_normal)
    }
}
else if (type == 0)
    draw_sprite_ext(sTesterCannonDestr, 0, (x + offx), (y + offy), 1, 1, image_angle, -1, 1)
else
    draw_sprite_ext(sTesterCannonDestr, 1, (x + offx), (y + offy), 1, 1, image_angle, -1, 1)
shader_reset()
