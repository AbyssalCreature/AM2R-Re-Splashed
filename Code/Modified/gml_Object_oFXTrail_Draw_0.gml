if (additive > 0)
{
    if (additive == 1)
        draw_set_blend_mode(bm_add)
    if (additive == 2)
    {
        draw_set_blend_mode(bm_add)
        drawtwice = 1
    }
}
if (subtractive > 0)
{
    if (subtractive == 1)
        draw_set_blend_mode(bm_subtract)
}
if (white > 0)
{
    if (white == 1)
        draw_set_blend_mode_ext(bm_one, bm_one)
}
draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
if drawtwice
    draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha)
draw_set_blend_mode(bm_normal)
