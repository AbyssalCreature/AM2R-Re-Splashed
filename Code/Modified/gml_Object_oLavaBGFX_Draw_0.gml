if ((view_yview[0] + view_hview[0]) >= (global.waterlevel - 80))
{
    draw_set_alpha(0.7)
    draw_set_blend_mode(bm_add)
    draw_rectangle_color((0 - (oControl.widescreen_space / 2)), (global.waterlevel - 80), (room_width + (oControl.widescreen_space / 2)), global.waterlevel, c_black, c_black, make_color_rgb(80, 40, 0), make_color_rgb(80, 40, 0), 0)
    draw_rectangle_color((0 - (oControl.widescreen_space / 2)), global.waterlevel, (room_width + (oControl.widescreen_space / 2)), (global.waterlevel + 128), make_color_rgb(80, 40, 0), make_color_rgb(80, 40, 0), c_black, c_black, 0)
    draw_set_blend_mode(bm_normal)
    draw_set_alpha(1)
}
