if fade
{
    image_alpha -= fadespeed
    if (image_alpha <= 0)
        instance_destroy()
}
