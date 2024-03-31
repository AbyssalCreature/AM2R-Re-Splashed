var shield;
with (other.id)
{
    if (state == 1 || state == 5)
    {
        if inview
        {
            if (sprite_index == xtype)
                draw_sprite_pixelated(sprite_index, image_index, x, y, image_xscale, 1, image_angle, c_white, 1, sizeX, sizeY, 16)
            else
            {
                draw_sprite_pixelated(sprite_index, image_index, lastEnemyX, lastEnemyY, lastFacing, 1, drawAngle, c_white, 1, sizeX, sizeY, 128)
                if (sprite_index == sSkorpBody)
                {
                    draw_sprite_pixelated(sSkorpDiscLunge, 0, (lastEnemyX + lengthdir_x(11, (lastAngle - 24))), (lastEnemyY + lengthdir_y(11, (lastAngle - 24))), -1, 1, 0, c_white, 1, sizeX, sizeY, 32)
                    draw_sprite_pixelated(sSkorpDiscLunge, 0, (lastEnemyX + lengthdir_x(11, (lastAngle + 24))), (lastEnemyY + lengthdir_y(11, (lastAngle + 24))), 1, 1, 0, c_white, 1, sizeX, sizeY, 32)
                }
                if drawHalzynShields
                {
                    if (lastEnemyGlow == 1)
                        shield = sHalzynShieldA4
                    else if (lastEnemyGlow == 2)
                        shield = 1701
                    else
                        shield = 428
                    draw_sprite_pixelated(shield, 0, (lastEnemyX + 8), (lastEnemyY - 3), 1, 1, 0, c_white, 1, sizeX, sizeY, 32)
                    draw_sprite_pixelated(shield, 0, (lastEnemyX - 8), (lastEnemyY - 3), -1, 1, 0, c_white, 1, sizeX, sizeY, 32)
                }
            }
        }
    }
    else if (!flashing)
        draw_sprite_ext(sprite_index, -1, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha)
    else if flashing
    {
        draw_sprite_ext(sprite_index, -1, round(x), round(y), image_xscale, image_yscale, image_angle, make_color_rgb(80, 80, 80), 1)
        draw_set_blend_mode(bm_add)
        repeat (3)
            draw_sprite_ext(sprite_index, -1, round(x), round(y), image_xscale, image_yscale, image_angle, -1, (1 - (fxtimer * 0.1)))
        draw_set_blend_mode(bm_normal)
    }
}
