if fadeout
{
    if (image_alpha > 0)
        image_alpha -= 0.05
    else
        instance_destroy()
}
else if rotate
    image_angle += 2
