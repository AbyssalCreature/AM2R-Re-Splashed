draw_self()
draw_set_blend_mode(bm_add)
repeat (2)
{
    if (flashing > 0)
        draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, -1, (flashing * 0.1))
}
draw_set_blend_mode(bm_normal)
if oEris.boosting
{
    if (oEris.fxtimer == 0 || oEris.fxtimer == 1)
    {
        draw_set_blend_mode(bm_add)
        draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, c_green, (1.1 + (oEris.fxtimer * 0.2)))
        draw_set_blend_mode(bm_normal)
    }
    if (oEris.fxtimer == 2 || oEris.fxtimer == 3)
    {
        draw_set_blend_mode(bm_add)
        repeat (2)
        {
            draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, c_yellow, 1)
            draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, c_white, 1)
        }
        draw_set_blend_mode(bm_normal)
    }
    if (oEris.fxtimer == 4 || oEris.fxtimer == 5)
    {
        draw_set_blend_mode(bm_add)
        repeat (2)
            draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, c_red, 1)
        draw_set_blend_mode(bm_normal)
    }
}
