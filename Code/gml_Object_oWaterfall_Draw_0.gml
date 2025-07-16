mid_y = y + yoff
bottom_y = y + 128 + yoff
if ((x + 64) > (view_xview[0] - widescreen_space / 2) && x < (view_xview[0] + view_wview[0] + widescreen_space / 2))
{
    draw_set_blend_mode(bm_add)
    draw_set_color(make_colour_rgb(6, 11, 81))
    draw_rectangle((x + 2), y, (x + 61), global.waterlevel, false)
    draw_background(bgWaterfall, x, (y - 128 + yoff))
    draw_background_part(bgWaterfall, 0, 0, 64, (global.waterlevel - mid_y), x, mid_y)
    if (bottom_y < global.waterlevel)
        draw_background_part(bgWaterfall, 0, 0, 64, (global.waterlevel - bottom_y), x, bottom_y)
    draw_set_blend_mode(bm_normal)
}
