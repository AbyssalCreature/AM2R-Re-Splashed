if (oControl.mod_fusion)
{
    sprite_index = sMumbo_Fusion;
    frozenspr = 2069;
}
else
{
    sprite_index = sMumbo;
    frozenspr = 318;
}

if (room == rm_a0h08 && instance_exists(oLavaSurface) && y > 500 && sprite_index != sMumbo_lava)
{
    sprite_index = sMumbo_lava;
    
    if (oControl.mod_fusion)
        sprite_index = sMumbo_lava_Fusion;
}
