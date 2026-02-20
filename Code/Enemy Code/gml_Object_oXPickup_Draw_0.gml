with (other.id)
{
    if (state == 1 && transforming)
    {
        if (inview)
        {
            if (sprite_index == xtype)
            {
                if (xtype == 1477)
                    draw_sprite_ext(sHXPickupSpawn, image_index, x, y, image_xscale, 1, image_angle, c_white, 1);
                else if (xtype == 1478)
                    draw_sprite_ext(sMXPickupSpawn, image_index, x, y, image_xscale, 1, image_angle, c_white, 1);
                else if (xtype == 1479)
                    draw_sprite_ext(sSMXPickupSpawn, image_index, x, y, image_xscale, 1, image_angle, c_white, 1);
                else if (xtype == 1480)
                    draw_sprite_ext(sPBXPickupSpawn, image_index, x, y, image_xscale, 1, image_angle, c_white, 1);
            }
            else
            {
                if (xtype == 1477)
                    draw_sprite_ext(sHXPickupSpawn, image_index, x, y, image_xscale, 1, image_angle, c_white, 1);
                else if (xtype == 1478)
                    draw_sprite_ext(sMXPickupSpawn, image_index, x, y, image_xscale, 1, image_angle, c_white, 1);
                else if (xtype == 1479)
                    draw_sprite_ext(sSMXPickupSpawn, image_index, x, y, image_xscale, 1, image_angle, c_white, 1);
                else if (xtype == 1480)
                    draw_sprite_ext(sPBXPickupSpawn, image_index, x, y, image_xscale, 1, image_angle, c_white, 1);
                
                if (sprite_index == sSkorpBody)
                {
                    if (oControl.mod_fusion)
                    {
                        draw_sprite_pixelated(2396, 0, lastEnemyX + lengthdir_x(11, lastAngle - 24), lastEnemyY + lengthdir_y(11, lastAngle - 24), -1, 1, 0, 16777215, 1, sizeX, sizeY, 32);
                        draw_sprite_pixelated(2396, 0, lastEnemyX + lengthdir_x(11, lastAngle + 24), lastEnemyY + lengthdir_y(11, lastAngle + 24), 1, 1, 0, 16777215, 1, sizeX, sizeY, 32);
                    }
                    else
                    {
                        draw_sprite_pixelated(1690, 0, lastEnemyX + lengthdir_x(11, lastAngle - 24), lastEnemyY + lengthdir_y(11, lastAngle - 24), -1, 1, 0, 16777215, 1, sizeX, sizeY, 32);
                        draw_sprite_pixelated(1690, 0, lastEnemyX + lengthdir_x(11, lastAngle + 24), lastEnemyY + lengthdir_y(11, lastAngle + 24), 1, 1, 0, 16777215, 1, sizeX, sizeY, 32);
                    }
                }
                
                if (drawHalzynShields)
                {
                    var shield;
                    
                    if (lastEnemyGlow == 1)
                    {
                        shield = 1700;
                        
                        if (oControl.XVariantsEnabled)
                            shield = 2362;
                    }
                    else if (lastEnemyGlow == 2)
                    {
                        shield = 1701;
                        
                        if (oControl.XVariantsEnabled)
                            shield = 2361;
                    }
                    else
                    {
                        shield = 428;
                        
                        if (oControl.XVariantsEnabled)
                            shield = 2365;
                    }
                    
                    draw_sprite_pixelated(shield, 0, lastEnemyX + 8, lastEnemyY - 3, 1, 1, 0, 16777215, 1, sizeX, sizeY, 32);
                    draw_sprite_pixelated(shield, 0, lastEnemyX - 8, lastEnemyY - 3, -1, 1, 0, 16777215, 1, sizeX, sizeY, 32);
                }
            }
        }
    }
    else if (state == 1 && !transforming)
    {
        draw_sprite_ext(xtype, -1, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    }
    else if (state == 5)
    {
        if (inview)
        {
            if (sprite_index == xtype)
            {
                draw_sprite_pixelated(sprite_index, image_index, x, y, image_xscale, 1, image_angle, 16777215, 1, sizeX, sizeY, 16);
            }
            else
            {
                draw_sprite_pixelated(sprite_index, -1, lastEnemyX, lastEnemyY, lastFacing, 1, drawAngle, 16777215, 1, sizeX, sizeY, 128);
                
                if (sprite_index == sSkorpBody)
                {
                    if (oControl.mod_fusion)
                    {
                        draw_sprite_pixelated(2396, 0, lastEnemyX + lengthdir_x(11, lastAngle - 24), lastEnemyY + lengthdir_y(11, lastAngle - 24), -1, 1, 0, 16777215, 1, sizeX, sizeY, 32);
                        draw_sprite_pixelated(2396, 0, lastEnemyX + lengthdir_x(11, lastAngle + 24), lastEnemyY + lengthdir_y(11, lastAngle + 24), 1, 1, 0, 16777215, 1, sizeX, sizeY, 32);
                    }
                    else
                    {
                        draw_sprite_pixelated(1690, 0, lastEnemyX + lengthdir_x(11, lastAngle - 24), lastEnemyY + lengthdir_y(11, lastAngle - 24), -1, 1, 0, 16777215, 1, sizeX, sizeY, 32);
                        draw_sprite_pixelated(1690, 0, lastEnemyX + lengthdir_x(11, lastAngle + 24), lastEnemyY + lengthdir_y(11, lastAngle + 24), 1, 1, 0, 16777215, 1, sizeX, sizeY, 32);
                    }
                }
                
                if (drawHalzynShields)
                {
                    var shield;
                    
                    if (lastEnemyGlow == 1)
                    {
                        shield = 1700;
                        
                        if (oControl.XVariantsEnabled)
                            shield = 2362;
                    }
                    else if (lastEnemyGlow == 2)
                    {
                        shield = 1701;
                        
                        if (oControl.XVariantsEnabled)
                            shield = 2361;
                    }
                    else
                    {
                        shield = 428;
                        
                        if (oControl.XVariantsEnabled)
                            shield = 2365;
                    }
                    
                    draw_sprite_pixelated(shield, 0, lastEnemyX + 8, lastEnemyY - 3, 1, 1, 0, 16777215, 1, sizeX, sizeY, 32);
                    draw_sprite_pixelated(shield, 0, lastEnemyX - 8, lastEnemyY - 3, -1, 1, 0, 16777215, 1, sizeX, sizeY, 32);
                }
            }
        }
    }
    else if (!flashing)
    {
        draw_sprite_ext(xtype, -1, round(x), round(y), image_xscale, image_yscale, image_angle, image_blend, image_alpha);
    }
    else if (flashing)
    {
        draw_sprite_ext(xtype, -1, round(x), round(y), image_xscale, image_yscale, image_angle, make_color_rgb(80, 80, 80), 1);
        draw_set_blend_mode(bm_add);
        
        repeat (3)
            draw_sprite_ext(xtype, -1, round(x), round(y), image_xscale, image_yscale, image_angle, -1, 1 - (fxtimer * 0.1));
        
        draw_set_blend_mode(bm_normal);
    }
}
