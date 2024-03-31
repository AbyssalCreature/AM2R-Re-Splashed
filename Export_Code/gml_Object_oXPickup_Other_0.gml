if (state == 3)
{
    if (x < (view_xview[0] - (oControl.widescreen_space / 2)) || x > ((view_xview[0] + view_wview[0]) + (oControl.widescreen_space / 2)) || y < 0 || y > room_height)
        instance_destroy()
}
