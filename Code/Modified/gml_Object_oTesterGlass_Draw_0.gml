draw_sprite_ext(sprite_index, -1, x, y, 1, 1, image_angle, -1, (random_range(0.4, 1) * image_alpha))
if flashing
{
    draw_set_blend_mode(bm_add)
    repeat (2)
        draw_sprite_ext(sprite_index, -1, x, y, 1, 1, image_angle, -1, (flashing / 5))
    draw_set_blend_mode(bm_normal)
}
