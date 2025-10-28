event_inherited()
if attack
{
    frz.spr1 = 421
    frz.spr2 = 421
    if oControl.mod_fusion
    {
        frz.spr1 = 2394
        frz.spr2 = 2394
    }
}
else
{
    frz.spr1 = 1691
    frz.spr2 = 1691
    if oControl.mod_fusion
    {
        frz.spr1 = 2395
        frz.spr2 = 2395
    }
}
frz.spr1xoff = lengthdir_x(len, dir)
frz.spr1yoff = lengthdir_y(len, dir)
frz.spr2xoff = lengthdir_x(len, (-dir))
frz.spr2yoff = lengthdir_y(len, (-dir))
frz.spr2xs = -1
