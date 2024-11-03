if (state == 3)
{
    if oControl.widescreen
    {
        if (x < (-((oControl.widescreen_space / 2))) || x > (room_width + (oControl.widescreen_space / 2)))
            instance_destroy()
    }
    else
        instance_destroy()
}
