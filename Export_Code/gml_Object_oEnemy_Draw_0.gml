if flipx
    image_xscale = facing
else
    image_xscale = 1
if frozen
    myspr = frozenspr
else
    myspr = sprite_index
if (!flashing)
{
    draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha)
    if (frozen > 0 && frozen < (freezetime * 0.2))
    {
        draw_set_blend_mode(bm_add)
        draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
        draw_set_blend_mode(bm_normal)
    }
}
if flashing
{
    draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1)
    draw_set_blend_mode(bm_add)
    repeat (3)
        draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
    draw_set_blend_mode(bm_normal)
}
