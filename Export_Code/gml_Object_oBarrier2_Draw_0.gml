draw_self()
if (frozen > 0 && frozen < 120)
{
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(sprite_index, -1, x, y, 1, 1, 0, -1, (1 - (fxtimer * 0.25)))
    draw_set_blend_mode(bm_normal)
}
