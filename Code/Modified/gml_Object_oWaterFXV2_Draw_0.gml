var height_top;
if surface_exists(mysurf)
{
    global.wave_height = max((round(lerp(global.wave_height, floor(((60 - (fps - 1)) ^ 1.5)), 0.1)) - 1), 1)
    height_top = min((y_bottom - y_top), global.wave_height)
    if ((view_yview[0] + view_hview[0]) >= y)
    {
        for (yy = 0; yy < 240; yy += global.wave_height)
        {
            xx = (AMP * sin((THETA + ((FREQ * yy) / y_bottom))))
            if (yy >= y_top)
            {
                draw_surface_part_ext(mysurf, 0, yy, (view_wview[0] + oControl.widescreen_space), global.wave_height, ((view_xview[0] + xx) - (oControl.widescreen_space / 2)), (view_yview[0] + yy), 1, 1, -1, 0.2)
                if ((yy - y_top) < global.wave_height)
                    draw_surface_part_ext(mysurf, 0, y_top, (view_wview[0] + oControl.widescreen_space), (yy - y_top), ((view_xview[0] + xx) - (oControl.widescreen_space / 2)), (view_yview[0] + y_top), 1, 1, -1, 0.2)
            }
        }
        if (height_top < global.wave_height)
            draw_surface_part_ext(mysurf, 0, y_top, (view_wview[0] + oControl.widescreen_space), height_top, ((view_xview[0] + xx) - (oControl.widescreen_space / 2)), y, 1, 1, -1, 0.2)
    }
}
