if fadeout
{
    if (image_alpha > 0)
        image_alpha -= 0.03
    else
        instance_destroy()
}
