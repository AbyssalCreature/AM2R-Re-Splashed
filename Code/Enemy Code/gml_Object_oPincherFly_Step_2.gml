if oControl.XVariantsEnabled
{
    sprite_index = sPincherFly_Fusion
    frozenspr = sPincherFlyFrozen_Fusion
}
else
{
    sprite_index = sPincherFly
    frozenspr = 316
}
if (instance_exists(oLavaSurface) && sprite_index != sPincherFlyA4)
{
    sprite_index = sPincherFlyA4
    if oControl.XVariantsEnabled
        sprite_index = sPincherFlyA4_Fusion
}
