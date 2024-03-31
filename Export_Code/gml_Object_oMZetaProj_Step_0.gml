image_angle = random(360)
if fadeout
{
    if (image_alpha > 0)
        image_alpha -= 0.05
    else
        instance_destroy()
}
