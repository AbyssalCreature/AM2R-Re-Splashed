if oControl.widescreen
{
    if ((oControl.widescreen_space + 320) <= room_width)
        x = clamp(x, limit, (room_width - limit))
    else
        x = floor((room_width / 2))
}
