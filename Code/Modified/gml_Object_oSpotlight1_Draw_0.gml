if (global.event[200] > 0)
{
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(sSpotlight1, -1, x, y, 1, 1, 0, -1, image_alpha)
    draw_sprite_ext(sSpotlight1, -1, x, y, -1, 1, 0, -1, image_alpha)
    draw_set_blend_mode(bm_normal)
}
