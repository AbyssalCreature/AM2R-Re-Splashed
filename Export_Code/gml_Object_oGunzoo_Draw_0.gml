armor1 = sGunzooArmor1
armor2 = sGunzooArmor2
turn = sGunzooTurn
if frozen
{
    myspr = frozenspr
    armor1 = sGunzooArmor1Frozen
    armor2 = sGunzooArmor2Frozen
    turn = sGunzooTurnFrozen
}
else
{
    myspr = sprite_index
    armor1 = sGunzooArmor1
    armor2 = sGunzooArmor2
    turn = sGunzooTurn
}
if (!flashing)
{
    if (turning == 0)
    {
        draw_sprite_ext(myspr, -1, x, y, facing, 1, image_angle, -1, 1)
        if (phase == 0)
            draw_sprite_ext(armor1, -1, x, (y - aoffset), facing, 1, image_angle, -1, 1)
        if (phase <= 1)
            draw_sprite_ext(armor2, -1, (x + aoffset), y, facing, 1, image_angle, -1, 1)
    }
    if (turning > 0)
        draw_sprite_ext(turn, -1, x, y, facing, 1, image_angle, -1, 1)
    if (frozen > 0 && frozen < (freezetime * 0.2))
    {
        draw_set_blend_mode(bm_add)
        if (turning == 0)
        {
            draw_sprite_ext(myspr, -1, x, y, facing, 1, image_angle, -1, (1 - (fxtimer * 0.35)))
            if (phase == 0)
                draw_sprite_ext(armor1, -1, x, (y - aoffset), facing, 1, image_angle, -1, (1 - (fxtimer * 0.4)))
            if (phase <= 1)
                draw_sprite_ext(armor2, -1, (x + aoffset), y, facing, 1, image_angle, -1, (1 - (fxtimer * 0.4)))
        }
        if (turning > 0)
            draw_sprite_ext(turn, -1, x, y, facing, 1, image_angle, -1, (1 - (fxtimer * 0.35)))
        draw_set_blend_mode(bm_normal)
    }
}
if flashing
{
    if (turning == 0)
    {
        draw_sprite_ext(myspr, -1, x, y, facing, 1, image_angle, make_color_rgb(80, 80, 80), 1)
        if (phase == 0)
            draw_sprite_ext(armor1, -1, x, (y - aoffset), facing, 1, image_angle, make_color_rgb(80, 80, 80), 1)
        if (phase <= 1)
            draw_sprite_ext(armor2, -1, (x + aoffset), y, facing, 1, image_angle, make_color_rgb(80, 80, 80), 1)
    }
    if (turning > 0)
        draw_sprite_ext(turn, -1, x, y, facing, 1, image_angle, make_color_rgb(80, 80, 80), 1)
    draw_set_blend_mode(bm_add)
    repeat (2)
    {
        if (turning == 0)
        {
            draw_sprite_ext(myspr, -1, x, y, facing, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
            if (phase == 0)
                draw_sprite_ext(armor1, -1, x, (y - aoffset), facing, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
            if (phase <= 1)
                draw_sprite_ext(armor2, -1, (x + aoffset), y, facing, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
        }
        if (turning > 0)
            draw_sprite_ext(turn, -1, x, y, facing, 1, image_angle, -1, (1 - (fxtimer * 0.25)))
    }
    draw_set_blend_mode(bm_normal)
}
