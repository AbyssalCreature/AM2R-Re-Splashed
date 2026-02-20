event_inherited()
if attack
{
    frz.spr1 = 421
    frz.spr2 = 421
    if oControl.XVariantsEnabled
    {
        frz.spr1 = sSkorpDiscFrozen_Fusion
        frz.spr2 = sSkorpDiscFrozen_Fusion
    }
}
else
{
    frz.spr1 = 1691
    frz.spr2 = 1691
    if oControl.XVariantsEnabled
    {
        frz.spr1 = sSkorpDiscLungeFrozen_Fusion
        frz.spr2 = sSkorpDiscLungeFrozen_Fusion
    }
}
frz.spr1xoff = lengthdir_x(len, dir)
frz.spr1yoff = lengthdir_y(len, dir)
frz.spr2xoff = lengthdir_x(len, (-dir))
frz.spr2yoff = lengthdir_y(len, (-dir))
frz.spr2xs = -1
