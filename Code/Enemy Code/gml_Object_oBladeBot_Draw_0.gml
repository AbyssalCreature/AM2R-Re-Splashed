event_inherited();

if (oControl.mod_fusion)
{
    if (frozen == 0)
        sprite_index = sBladeBot_Fusion;
    
    frozenspr = 2088;
    empspr = 2089;
    bladeboteye = 2144;
}
else
{
    if (frozen == 0)
        sprite_index = sBladeBot;
    
    frozenspr = 439;
    empspr = 438;
    bladeboteye = 440;
}

if (frozen == 0)
    draw_sprite(bladeboteye, -1, x, y);
