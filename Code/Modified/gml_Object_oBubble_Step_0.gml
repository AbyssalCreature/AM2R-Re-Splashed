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
