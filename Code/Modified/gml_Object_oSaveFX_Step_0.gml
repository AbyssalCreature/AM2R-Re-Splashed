if (fadeout == 0)
{
    if (image_yscale < 1)
        image_yscale += 0.02
    if (image_alpha < 1)
        image_alpha += 0.02
}
if fadeout
{
    if (image_yscale > 0)
        image_yscale -= 0.02
    if (image_alpha > 0)
        image_alpha -= 0.02
    else
        instance_destroy()
}
fxtimer += 1
if (fxtimer > 2)
    fxtimer = 0
