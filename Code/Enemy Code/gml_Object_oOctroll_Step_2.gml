if (oControl.mod_fusion)
{
    sprite_index = sOctroll_Fusion;
    frozenspr = 2023;
}
else
{
    sprite_index = sOctroll;
    frozenspr = 451;
}

if (room == rm_a0h12 && instance_exists(oLavaSurface) && sprite_index != sOctroll_lava)
{
    sprite_index = sOctroll_lava;
    
    if (oControl.mod_fusion)
        sprite_index = sOctroll_lava_Fusion;
}
