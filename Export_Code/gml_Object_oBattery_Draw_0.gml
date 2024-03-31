var xoff, yoff;
if (!shaking)
    draw_sprite_ext(sprite_index, -1, x, y, 1, 1, image_angle, -1, 1)
if shaking
{
    xoff = random_range(-1, 1)
    yoff = random_range(-1, 1)
    draw_sprite_ext(sprite_index, -1, (x + xoff), (y + yoff), image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1)
    draw_set_blend_mode(bm_add)
    repeat (3)
        draw_sprite_ext(sprite_index, -1, (x + xoff), (y + yoff), image_xscale, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
    draw_set_blend_mode(bm_normal)
}
