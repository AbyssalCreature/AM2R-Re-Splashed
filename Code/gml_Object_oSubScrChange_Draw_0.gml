var hudpal;
hudpal = 0
if (oControl.preferredcolor == 17)
{
    if ((!oControl.mod_fusion) && global.currentsuit == 2 && oControl.hudoption != 2)
        hudpal = 1
    if (oControl.mod_fusion && oControl.hudoption < 2)
        hudpal = 1
}
else if (oControl.preferredcolor != 17 && os_type != os_android)
{
    if (oControl.palette == 0)
        hudpal = oControl.preferredcolor + 1
    if (oControl.palette == 1)
        hudpal = oControl.preferredcolor + 17
}
if (oControl.hudoption == 1)
    hudpal = oControl.guicolor + 33
if (global.shaders_compiled && os_type != os_android)
{
    if (oControl.hudoption != 2 && (!oControl.gamehud))
        pal_swap_set(oControl.hudpal, hudpal, 0)
}
draw_sprite_ext(sprite_index, -1, (view_xview[0] + 160 + offset), (view_yview[0] + 120), 1, 1, 0, -1, 1)
draw_background(bg_SubScrMenuEqu, (view_xview[0] + 196 + offset), (view_yview[0] + 103))
draw_sprite_ext(sprite_index, -1, (view_xview[0] + 160 - offset), (view_yview[0] + 120), 1, 1, 180, -1, 1)
draw_background(bg_SubScrMenuLog, (view_xview[0] + 90 - offset), (view_yview[0] + 103))
draw_sprite_ext(sprite_index, -1, (view_xview[0] + 160), (view_yview[0] + 120 - offset), 1, 1, 90, -1, 1)
draw_background(bg_SubScrMenuMap, (view_xview[0] + 143), (view_yview[0] + 50 - offset))
draw_sprite_ext(sprite_index, -1, (view_xview[0] + 160), (view_yview[0] + 120 + offset), 1, 1, 270, -1, 1)
draw_background(bg_SubScrMenuOpt, (view_xview[0] + 143), (view_yview[0] + 156 + offset))
if oControl.widescreen
{
    draw_set_alpha(1)
    draw_set_color(c_black)
    draw_rectangle((view_xview[0] + 320 + offset), view_yview[0], (view_xview[0] + 320 + oControl.widescreen_space / 2), (view_yview[0] + 240), false)
    draw_rectangle((view_xview[0] - oControl.widescreen_space / 2), view_yview[0], (view_xview[0] + oControl.widescreen_space / 2 - offset), (view_yview[0] + 240), false)
    draw_set_color(c_white)
}
shader_reset()
