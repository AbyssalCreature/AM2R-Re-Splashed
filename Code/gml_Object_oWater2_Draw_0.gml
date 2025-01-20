draw_set_color(make_colour_rgb(6, 11, 81))
draw_set_blend_mode(bm_add)
draw_rectangle((view_xview[0] - (oControl.widescreen * 53)), view_yview[0], ((view_xview[0] + 320) + (oControl.widescreen * 53)), (view_yview[0] + 250), false)
draw_set_blend_mode(bm_normal)
