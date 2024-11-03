if (!flashing)
{
    if (turning == 0)
    {
        draw_sprite_ext(sprite_index, -1, x, y, facing, 1, image_angle, -1, 1)
        if (phase == 0)
            draw_sprite_ext(sGunzooArmor1, -1, x, (y - aoffset), facing, 1, image_angle, -1, 1)
        if (phase <= 1)
            draw_sprite_ext(sGunzooArmor2, -1, (x + aoffset), y, facing, 1, image_angle, -1, 1)
    }
    if (turning > 0)
        draw_sprite_ext(sGunzooTurn, -1, x, y, facing, 1, image_angle, -1, 1)
}
if flashing
{
    if (turning == 0)
    {
        draw_sprite_ext(sprite_index, -1, x, y, facing, 1, image_angle, make_color_rgb(80, 80, 80), 1)
        if (phase == 0)
            draw_sprite_ext(sGunzooArmor1, -1, x, (y - aoffset), facing, 1, image_angle, make_color_rgb(80, 80, 80), 1)
        if (phase <= 1)
            draw_sprite_ext(sGunzooArmor2, -1, (x + aoffset), y, facing, 1, image_angle, make_color_rgb(80, 80, 80), 1)
    }
    if (turning > 0)
        draw_sprite_ext(sGunzooTurn, -1, x, y, facing, 1, image_angle, make_color_rgb(80, 80, 80), 1)
    draw_set_blend_mode(bm_add)
    repeat (3)
    {
        if (turning == 0)
        {
            draw_sprite_ext(sprite_index, -1, x, y, facing, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
            if (phase == 0)
                draw_sprite_ext(sGunzooArmor1, -1, x, (y - aoffset), facing, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
            if (phase <= 1)
                draw_sprite_ext(sGunzooArmor2, -1, (x + aoffset), y, facing, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
        }
        if (turning > 0)
            draw_sprite_ext(sGunzooTurn, -1, x, y, facing, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
    }
    draw_set_blend_mode(bm_normal)
}
