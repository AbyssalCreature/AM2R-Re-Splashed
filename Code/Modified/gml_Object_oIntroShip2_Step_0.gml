if (statetime > 80)
    image_angle = lerp(image_angle, -30, 0.02)
if (statetime < 20)
    zoomratio = 0.03
if (statetime >= 20 && statetime < 50)
    zoomratio = 0.025
if (statetime >= 50 && statetime < 80)
    zoomratio = 0.02
if (statetime > 50)
{
    if (y > 80)
        y -= 0.2
}
if (statetime < 120)
{
    if (hspeed > -2.5)
        hspeed -= 0.1
}
if (statetime > 120 && statetime < 170)
    hspeed += 0.07
if (statetime > 170)
    speed *= 0.97
scale = lerp(scale, 0, zoomratio)
image_xscale = scale
image_yscale = scale
x += xoff
if (xoff > 0)
    xoff *= 0.7
statetime += 1
if (statetime > 600)
    instance_destroy()
fxtimer += 1
if (fxtimer > 3)
    fxtimer = 0
