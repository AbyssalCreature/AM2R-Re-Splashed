draw_sprite_ext(sprite_index, -1, x, y, 1, 1, image_angle, -1, 1)
if flashing
{
    draw_set_blend_mode(bm_add)
    repeat (2)
        draw_sprite_ext(sprite_index, -1, x, y, 1, 1, image_angle, -1, (flashing / 5))
    draw_set_blend_mode(bm_normal)
}
draw_set_color(c_white)
sep = 16
draw_text(8, 8, ("x: " + string(x)))
draw_text(8, (8 + sep), ("y: " + string(y)))
