if (fadeout == 0)
{
    if (image_alpha < 1)
        image_alpha += 0.02
}
if fadeout
{
    if (image_alpha > 0)
        image_alpha -= 0.02
    else
        instance_destroy()
}
