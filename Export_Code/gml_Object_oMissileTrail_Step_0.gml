if (!fadeout)
{
    if (image_xscale < 2)
        image_xscale += fadein_speed
}
else if (image_alpha > 0)
    image_alpha -= 0.05
else
    instance_destroy()
