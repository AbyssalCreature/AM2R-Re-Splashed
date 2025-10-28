if oControl.mod_fusion
{
    sprite_index = sPincherFly_Fusion
    frozenspr = 2377
}
else
{
    sprite_index = sPincherFly
    frozenspr = 316
}
if (instance_exists(oLavaSurface) && sprite_index != sPincherFlyA4)
{
    sprite_index = sPincherFlyA4
    if oControl.mod_fusion
        sprite_index = sPincherFlyA4_Fusion
}
