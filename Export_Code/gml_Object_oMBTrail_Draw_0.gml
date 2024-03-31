i = 0
repeat (10)
{
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(sBallTrail, 0, sx[i], sy[i], 1, 1, 0, image_blend, ((1 - (i * 0.1)) * 0.5))
    draw_set_blend_mode(bm_normal)
    i += 1
}
