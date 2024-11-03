if (!active)
{
    active = 1
    image_index = 0
    if instance_exists(oNotification)
    {
        with (oNotification)
            fadeout = 1
    }
}
alarm[0] = 2
