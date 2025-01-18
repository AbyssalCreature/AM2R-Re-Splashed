var limit;
if ((oControl.widescreen_space + 320) <= room_width)
{
    limit = (floor((oControl.widescreen_space / 2)) + 160)
    x = clamp(x, limit, (room_width - limit))
}
else
    x = floor((room_width / 2))
