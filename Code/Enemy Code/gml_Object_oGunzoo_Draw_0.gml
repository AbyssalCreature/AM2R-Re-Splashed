armor1 = 336;
armor2 = 337;
turn = 342;

if (oControl.mod_fusion)
{
    sprite_index = sGunzoo_Fusion;
    armor1 = 2141;
    armor2 = 2116;
    turn = 2079;
    frozenspr = 2029;
    empspr = 2028;
}
else
{
    sprite_index = sGunzoo;
    armor1 = 336;
    armor2 = 337;
    turn = 342;
    frozenspr = 334;
    empspr = 335;
}

if (frozen)
{
    myspr = frozenspr;
    armor1 = 1844;
    armor2 = 1750;
    turn = 1839;
    
    if (oControl.mod_fusion)
    {
        armor1 = 2140;
        armor2 = 2115;
        turn = 2078;
    }
}
else
{
    myspr = sprite_index;
    armor1 = 336;
    armor2 = 337;
    turn = 342;
    
    if (oControl.mod_fusion)
    {
        armor1 = 2141;
        armor2 = 2116;
        turn = 2079;
    }
}

if (!flashing)
{
    if (turning == 0)
    {
        draw_sprite_ext(myspr, -1, x, y, facing, 1, image_angle, -1, 1);
        
        if (phase == 0)
            draw_sprite_ext(armor1, -1, x, y - aoffset, facing, 1, image_angle, -1, 1);
        
        if (phase <= 1)
            draw_sprite_ext(armor2, -1, x + aoffset, y, facing, 1, image_angle, -1, 1);
    }
    
    if (turning > 0)
        draw_sprite_ext(turn, -1, x, y, facing, 1, image_angle, -1, 1);
    
    if (frozen > 0 && frozen < (freezetime * 0.2))
    {
        draw_set_blend_mode(bm_add);
        
        if (turning == 0)
        {
            draw_sprite_ext(myspr, -1, x, y, facing, 1, image_angle, -1, 1 - (fxtimer * 0.35));
            
            if (phase == 0)
                draw_sprite_ext(armor1, -1, x, y - aoffset, facing, 1, image_angle, -1, 1 - (fxtimer * 0.4));
            
            if (phase <= 1)
                draw_sprite_ext(armor2, -1, x + aoffset, y, facing, 1, image_angle, -1, 1 - (fxtimer * 0.4));
        }
        
        if (turning > 0)
            draw_sprite_ext(turn, -1, x, y, facing, 1, image_angle, -1, 1 - (fxtimer * 0.35));
        
        draw_set_blend_mode(bm_normal);
    }
}

if (flashing)
{
    if (turning == 0)
    {
        draw_sprite_ext(myspr, -1, x, y, facing, 1, image_angle, make_color_rgb(80, 80, 80), 1);
        
        if (phase == 0)
            draw_sprite_ext(armor1, -1, x, y - aoffset, facing, 1, image_angle, make_color_rgb(80, 80, 80), 1);
        
        if (phase <= 1)
            draw_sprite_ext(armor2, -1, x + aoffset, y, facing, 1, image_angle, make_color_rgb(80, 80, 80), 1);
    }
    
    if (turning > 0)
        draw_sprite_ext(turn, -1, x, y, facing, 1, image_angle, make_color_rgb(80, 80, 80), 1);
    
    draw_set_blend_mode(bm_add);
    
    repeat (2)
    {
        if (turning == 0)
        {
            draw_sprite_ext(myspr, -1, x, y, facing, 1, image_angle, -1, 1 - (fxtimer * 0.25));
            
            if (phase == 0)
                draw_sprite_ext(armor1, -1, x, y - aoffset, facing, 1, image_angle, -1, 1 - (fxtimer * 0.25));
            
            if (phase <= 1)
                draw_sprite_ext(armor2, -1, x + aoffset, y, facing, 1, image_angle, -1, 1 - (fxtimer * 0.25));
        }
        
        if (turning > 0)
            draw_sprite_ext(turn, -1, x, y, facing, 1, image_angle, -1, 1 - (fxtimer * 0.25));
    }
    
    draw_set_blend_mode(bm_normal);
}
