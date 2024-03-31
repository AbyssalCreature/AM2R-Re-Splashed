if (image_alpha < 0.7 && fadingaway == 0)
    image_alpha += 0.05
if (fadingaway == 1)
{
    image_alpha -= 0.05
    if (image_alpha <= 0)
        instance_destroy()
}
if (y < (global.waterlevel + 32))
    fadingaway = 1
if ((hspeed > 0 && x > xlimit) || (hspeed < 0 && x < xlimit))
{
    fadingaway = 1
    hspeed *= 0.75
    vspeed += 0.2
}
