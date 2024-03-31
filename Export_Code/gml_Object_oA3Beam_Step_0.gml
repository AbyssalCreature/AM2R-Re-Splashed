if fadeout
{
    if (image_alpha > 0)
        image_alpha -= 0.1
    else
        instance_destroy()
}
fxtimer = (!fxtimer)
