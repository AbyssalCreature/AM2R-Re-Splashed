if (flipx)
    image_xscale = facing;
else
    image_xscale = 1;

if (frozen > 0)
{
    image_speed = 0;
    
    if (sprite_index == sHornoadIdle || 2087)
    {
        frozenspr = 1763;
        
        if (oControl.mod_fusion)
            frozenspr = 2086;
    }
    
    if (sprite_index == sHornoadShake || 2095)
    {
        frozenspr = 1786;
        
        if (oControl.mod_fusion)
            frozenspr = 2094;
    }
    
    if (sprite_index == sHornoadTurn || 2075)
    {
        frozenspr = 1803;
        
        if (oControl.mod_fusion)
            frozenspr = 2074;
    }
    
    if (sprite_index == sHornoadJump || 2032)
    {
        frozenspr = 1807;
        
        if (oControl.mod_fusion)
            frozenspr = 2031;
    }
    
    if (sprite_index == sHornoadAttack || 2081)
    {
        frozenspr = 1792;
        
        if (oControl.mod_fusion)
            frozenspr = 2080;
    }
    
    myspr = frozenspr;
}
else
{
    myspr = sprite_index;
}

if (!flashing)
{
    draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha);
    
    if (frozen > 0 && frozen < (freezetime * 0.2))
    {
        draw_set_blend_mode(bm_add);
        draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, 1 - (fxtimer * 0.25));
        draw_set_blend_mode(bm_normal);
    }
}

if (flashing)
{
    draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1);
    draw_set_blend_mode(bm_add);
    
    repeat (3)
        draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, 1 - (fxtimer * 0.25));
    
    draw_set_blend_mode(bm_normal);
}
