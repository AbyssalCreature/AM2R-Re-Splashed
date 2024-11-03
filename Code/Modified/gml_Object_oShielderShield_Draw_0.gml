draw_sprite_ext(sprite_index, -1, (x + offx), (y + offy), 1, 1, image_angle, -1, 1)
if flashing
{
    draw_set_blend_mode(bm_add)
    repeat (2)
        draw_sprite_ext(sprite_index, -1, (x + offx), (y + offy), 1, 1, image_angle, -1, (flashing / 5))
    draw_set_blend_mode(bm_normal)
}
