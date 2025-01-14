draw_sprite_ext(sprite_index, -1, (x + offx), (y + offy), 1, 1, image_angle, -1, 1)
if (!damaged)
    draw_sprite_ext(chargeType, image_index, (x + offx), (y + offy), 1, 1, image_angle, -1, charge)
if (flashing && damaged == 0)
{
    draw_set_blend_mode(bm_add)
    repeat (2)
        draw_sprite_ext(sprite_index, -1, (x + offx), (y + offy), 1, 1, image_angle, -1, (flashing / 5))
    draw_set_blend_mode(bm_normal)
}
