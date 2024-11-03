if (global.ingame && oControl.shader_on == 0)
{
    draw_set_blend_mode(bm_add)
    draw_set_color(c_red)
    draw_set_alpha(screenalpha)
    draw_rectangle((view_xview[0] - (oControl.widescreen_space / 2)), view_yview[0], ((view_xview[0] + 320) + (oControl.widescreen_space / 2)), (view_yview[0] + 240), false)
    draw_set_blend_mode(bm_normal)
}
