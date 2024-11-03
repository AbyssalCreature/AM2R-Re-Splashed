if (facing == 1)
{
    if (image_angle <= 70)
        image_angle += rotspeed
    if (image_angle >= 70)
        instance_destroy()
}
if (facing == -1)
{
    if (image_angle >= 110)
        image_angle -= rotspeed
    if (image_angle <= 110)
        instance_destroy()
}
