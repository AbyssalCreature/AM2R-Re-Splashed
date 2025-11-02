if (flipx)
    image_xscale = facing;
else
    image_xscale = 1;

if (oControl.mod_fusion)
{
    sprite_index = sAutom_Fusion;
    frozenspr = 2051;
    cannonspr = 2145;
    empspr = 2050;
}
else
{
    sprite_index = sAutom;
    cannonspr = 347;
    frozenspr = 345;
    empspr = 346;
}

if (frozen)
    myspr = frozenspr;
else
    myspr = sprite_index;

if (!flashing)
{
    draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, image_alpha);
    draw_sprite_ext(cannonspr, -1, x + 5, y + 9, image_xscale, 1, image_angle, -1, calpha);
}

if (flashing)
{
    draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, make_color_rgb(80, 80, 80), 1);
    draw_set_blend_mode(bm_add);
    
    repeat (3)
        draw_sprite_ext(myspr, -1, x, y, image_xscale, 1, image_angle, -1, 1 - (fxtimer * 0.25));
    
    draw_set_blend_mode(bm_normal);
}
