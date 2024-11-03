if (global.watertype == 0 && instance_exists(oWater))
{
    draw_set_blend_mode(bm_subtract)
    draw_set_color(make_color_rgb(200, 200, 0))
    draw_rectangle(view_xview[0], (global.waterlevel + oWater.yoffset), (view_xview[0] + 320), (view_yview[0] + 250), false)
    draw_set_blend_mode(bm_add)
    draw_set_color(make_color_rgb(10, 10, 45))
    draw_rectangle(view_xview[0], (global.waterlevel + oWater.yoffset), (view_xview[0] + 320), (view_yview[0] + 250), false)
    draw_set_blend_mode(bm_normal)
}
