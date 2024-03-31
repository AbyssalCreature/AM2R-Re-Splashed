if fadeout
{
    if (image_alpha > 0)
        image_alpha -= fadespeed
    else
        instance_destroy()
}
