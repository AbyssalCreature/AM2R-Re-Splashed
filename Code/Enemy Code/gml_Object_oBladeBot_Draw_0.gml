event_inherited()
if oControl.mod_fusion
{
    if (frozen == 0)
        sprite_index = sBladeBot_Fusion
    frozenspr = sBladeBotFrozen_Fusion
    empspr = sBladeBot_Fusion
    bladeboteye = sBladeBotEye_Fusion
}
else
{
    if (frozen == 0)
        sprite_index = sBladeBot
    frozenspr = 439
    empspr = 438
    bladeboteye = sBladeBotEye
}
if (frozen == 0)
    draw_sprite(bladeboteye, -1, x, y)
