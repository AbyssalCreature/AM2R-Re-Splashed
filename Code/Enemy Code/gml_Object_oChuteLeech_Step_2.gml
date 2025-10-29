if oControl.mod_fusion
{
    sprite_index = sChuteLeech_Fusion
    frozenspr = sChuteLeechFrozen_Fusion
}
else
{
    sprite_index = sChuteLeech
    frozenspr = 332
}
if (room == rm_a0h08 && instance_exists(oLavaSurface) && sprite_index != sChuteLeech_lava)
{
    sprite_index = sChuteLeech_lava
    if oControl.mod_fusion
        sprite_index = sChuteLeech_lava_Fusion
}
