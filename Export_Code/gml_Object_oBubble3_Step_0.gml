if (fadingaway == 1)
{
    image_alpha -= 0.2
    if (image_alpha <= 0)
        instance_destroy()
}
hspeed *= 0.94
if (vspeed > -0.5)
    vspeed -= 0.08
if (y < (global.waterlevel + 8))
    fadingaway = 1
if (y < (global.waterlevel + 4))
    instance_destroy()
