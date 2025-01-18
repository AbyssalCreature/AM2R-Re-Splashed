if (!fadeout)
{
    if (image_alpha < max_alpha)
        image_alpha += 0.02
}
else if (image_alpha > 0)
    image_alpha -= 0.02
else
    instance_destroy()
