if (frozen == 0)
{
    image_speed = 0.1
    sprite_index = sIceBarrier2
}
else
{
    image_speed = 0
    sprite_index = sIceBarrierFrozen
}
if (frozen > 0)
    frozen -= 1
if (fxtimer < 5)
    fxtimer += 1
else
    fxtimer = 0
if (wiggle > 0)
{
    wiggle--
    if (frozen == 0)
        image_speed = 0.3
}
