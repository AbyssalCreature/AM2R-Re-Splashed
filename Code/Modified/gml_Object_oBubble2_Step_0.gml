if (fadingaway == 1)
{
    image_alpha -= 0.05
    if (image_alpha <= 0)
        instance_destroy()
}
hspeed *= 0.94
if (y < (global.waterlevel + 32))
    fadingaway = 1
if (y < (global.waterlevel + 4))
    instance_destroy()
