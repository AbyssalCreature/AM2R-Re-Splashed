if active
{
    if (image_index >= 0.2)
        image_index -= 0.2
    eye_frame = (!eye_frame)
    if ((!instance_exists(platform)) && image_index <= 2)
    {
        platform = instance_create((x - 16), y, oPlatform1)
        platform.image_xscale = 2
    }
    if (timer >= 60)
    {
        active = 0
        timer = 0
        with (platform)
            instance_destroy()
        alarm[0] = 180
        stepping = 0
    }
}
else
{
    if (image_index < 9)
        image_index += 0.5
    eye_frame = 2
}
