event_inherited()
if attack
{
    frz.spr1 = 421
    frz.spr2 = 421
}
else
{
    frz.spr1 = 1691
    frz.spr2 = 1691
}
frz.spr1xoff = lengthdir_x(len, dir)
frz.spr1yoff = lengthdir_y(len, dir)
frz.spr2xoff = lengthdir_x(len, (-dir))
frz.spr2yoff = lengthdir_y(len, (-dir))
frz.spr2xs = -1
