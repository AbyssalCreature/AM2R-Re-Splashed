draw_set_blend_mode(bm_add)
if global.sensitivitymode
{
    if enemy
        draw_sprite_ext(sPowerBombBlastSax, -1, x, y, image_xscale, image_yscale, image_angle, $4FFFAF, (image_alpha * 0.3))
    else
        draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, -1, (image_alpha * 0.3))
}
else if enemy
    draw_sprite_ext(sPowerBombBlastSax, -1, x, y, image_xscale, image_yscale, image_angle, $4FFFAF, (image_alpha * (1 - (alpha2 * 0.2))))
else
    draw_sprite_ext(sprite_index, -1, x, y, image_xscale, image_yscale, image_angle, -1, (image_alpha * (1 - (alpha2 * 0.2))))
draw_set_blend_mode(bm_normal)
