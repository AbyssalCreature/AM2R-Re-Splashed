if (state == 0)
{
    with (oCoreX)
        draw_sprite_pixelated(sprite_index, image_index, x, y, 1, 1, image_angle, c_white, 1, other.sizeX, other.sizeY, 64)
    if (sprite_index == xtype)
        draw_sprite_pixelated(sprite_index, image_index, x, y, image_xscale, 1, image_angle, c_white, 1, sizeX, sizeY, 64)
    else
    {
        if (sprite_index == sErisHead)
            draw_sprite_pixelated(sErisJaw, 0, lastBossX, lastBossY, 1, lastYscale, lastBossAngle, c_white, 1, sizeX, sizeY, 64)
        draw_sprite_pixelated(sprite_index, image_index, lastBossX, lastBossY, lastBossFacing, lastYscale, lastBossAngle, c_white, 1, sizeX, sizeY, 128)
    }
}
else if flashing
{
    draw_sprite_ext(sprite_index, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1)
    draw_set_blend_mode(bm_add)
    repeat (3)
        draw_sprite_ext(sprite_index, -1, x, y, image_xscale, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
    draw_set_blend_mode(bm_normal)
}
else
    draw_self()
