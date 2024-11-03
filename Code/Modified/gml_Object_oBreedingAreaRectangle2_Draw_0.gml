draw_set_blend_mode(bm_add)
draw_set_alpha(1)
draw_rectangle_color((view_xview[0] - (oControl.widescreen_space / 2)), (view_yview[0] + 160), ((view_xview[0] + 350) + (oControl.widescreen_space / 2)), (view_yview[0] + 250), c_black, c_black, color, color, 0)
draw_set_blend_mode(bm_normal)
