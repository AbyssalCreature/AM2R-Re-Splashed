var x1, y1, x2, y2;
repeat (15)
{
    x1 = max(0, ((view_xview[0] - 64) - (oControl.widescreen_space / 2)))
    y1 = max(0, (view_yview[0] - 64))
    x2 = min(room_width, (((view_xview[0] + view_wview[0]) + 64) + (oControl.widescreen_space / 2)))
    y2 = min(room_height, ((view_yview[0] + view_hview[0]) + 64))
    dust = instance_create(irandom_range(x1, x2), irandom_range(y1, y2), oA6Dust)
}
