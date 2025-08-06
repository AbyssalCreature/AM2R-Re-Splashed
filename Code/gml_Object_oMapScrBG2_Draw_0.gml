var hudpal;
hudpal = 0
if ((!oControl.useselfpalette) && os_type != os_android)
{
    if ((!oControl.mod_fusion) && global.currentsuit == 2 && oControl.hudoption != 2)
        hudpal = 1
    if (oControl.mod_fusion && (!global.ibeam) && oControl.hudoption < 2)
        hudpal = 1
}
else if (oControl.useselfpalette && os_type != os_android)
{
    if (oControl.preferredcolor != 17)
    {
        if (oControl.palette == 0 || oControl.palette == 1)
            hudpal = oControl.preferredcolor + 1
        if (oControl.palette == 2)
            hudpal = oControl.preferredcolor + 17
    }
    if (instance_exists(oClient) && oClient.connected)
    {
        if (oControl.palette == 0 || oControl.palette == 1)
            hudpal = global.clientID + 1
        if (oControl.palette == 2)
            hudpal = global.clientID + 17
    }
}
if (oControl.hudoption == 1 && oControl.palette != 3 && os_type != os_android)
    hudpal = oControl.guicolor + 33
if (global.shaders_compiled && os_type != os_android)
{
    if (oControl.preferredcolor != 17 || (instance_exists(oClient) && oClient.connected) || oControl.hudoption == 1)
    {
        if (oControl.hudoption != 2 && (!oControl.gamehud) && oControl.hudpalette != -1)
            pal_swap_set(oControl.hudpalette, hudpal, 0)
    }
}
draw_set_color(c_black)
draw_set_alpha(1)
draw_rectangle((view_xview[0] - widescreen_space / 2), view_yview[0], (view_xview[0] + 330 + widescreen_space / 2), (view_yview[0] + 41 - rectoffset), false)
draw_rectangle((view_xview[0] - widescreen_space / 2), (view_yview[0] + 198 + rectoffset), (view_xview[0] + 330 + widescreen_space / 2), (view_yview[0] + 250), false)
draw_background_ext(bg_SubScrBottom, (view_xview[0] - widescreen_space / 2), (view_yview[0] + 32 - rectoffset), (10 + widescreen * 3), 1, 0, -1, ealpha)
draw_background_ext(bg_MapBottom, view_xview[0], (view_yview[0] + 198 + rectoffset), 1, 1, 0, -1, ealpha)
draw_set_alpha(ealpha)
draw_set_font(global.fontGUI2)
draw_set_halign(fa_center)
draw_set_color(c_black)
draw_text((view_xview[0] + 161), (view_yview[0] + 30 - rectoffset), maptext)
draw_set_color(c_white)
draw_text((view_xview[0] + 160), (view_yview[0] + 29 - rectoffset), maptext)
draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text((view_xview[0] + 18), (view_yview[0] + 196 + rectoffset), timetext)
draw_text((view_xview[0] + 260), (view_yview[0] + 196 + rectoffset), metrtext1)
draw_text((view_xview[0] + 304), (view_yview[0] + 196 + rectoffset), metrtext2)
draw_set_color(c_white)
draw_text((view_xview[0] + 17), (view_yview[0] + 195 + rectoffset), timetext)
draw_text((view_xview[0] + 259), (view_yview[0] + 195 + rectoffset), metrtext1)
draw_text((view_xview[0] + 303), (view_yview[0] + 195 + rectoffset), metrtext2)
draw_set_font(global.fontMenuSmall)
draw_set_color(c_white)
draw_set_halign(fa_right)
draw_text((view_xview[0] + 318), (view_yview[0] + 229 + rectoffset), tip1text)
draw_set_halign(fa_left)
if (oMapCursor.state == 0)
    draw_text((view_xview[0] + 2), (view_yview[0] + 229 + rectoffset), tip2text)
if (oMapCursor.state == 1)
{
    draw_text((view_xview[0] + 2), (view_yview[0] + 221 + rectoffset), tip3text)
    draw_text((view_xview[0] + 2), (view_yview[0] + 229 + rectoffset), tip4text)
}
if (oMapCursor.state == 2)
    draw_text((view_xview[0] + 2), (view_yview[0] + 229 + rectoffset), tip5text)
shader_reset()
