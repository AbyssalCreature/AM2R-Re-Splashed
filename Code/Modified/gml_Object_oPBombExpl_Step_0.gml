image_xscale += 0.015
image_yscale += 0.015
if fadeout
{
    image_alpha -= 0.02
    if (image_alpha <= 0.5)
    {
        if instance_exists(oXPickup)
        {
            oXPickup.orbitX = x
            oXPickup.orbitY = y
            oXPickup.xstart = x
            oXPickup.ystart = y
        }
    }
    if (image_alpha <= 0)
        instance_destroy()
}
else if instance_exists(oXPickup)
{
    oXPickup.velX = 0
    oXPickup.velY = 0
    oXPickup.speed = 0
}
alpha2 = (!alpha2)
