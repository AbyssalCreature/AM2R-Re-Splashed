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
draw_set_color(c_black)
draw_set_alpha(1)
draw_rectangle(0, 0, 330, (41 - oSubscreenMenu.rectoffset), false)
draw_rectangle(0, (198 + oSubscreenMenu.rectoffset), 330, 250, false)
draw_background_ext(scr_SubScrTop_swap2(), 0, (32 - oSubscreenMenu.rectoffset), 1, 1, 0, -1, oSubscreenMenu.ealpha)
draw_background_ext(bg_SubScrBottom, 0, (198 + oSubscreenMenu.rectoffset), 10, 1, 0, -1, oSubscreenMenu.ealpha)
draw_set_alpha(oSubscreenMenu.ealpha)
draw_set_font(global.fontMenuSmall)
draw_set_halign(fa_center)
draw_set_color(c_black)
draw_text(161, (197 + oSubscreenMenu.rectoffset), oSubscreenMenu.dtext)
draw_set_color(c_white)
draw_text(160, (196 + oSubscreenMenu.rectoffset), oSubscreenMenu.dtext)
draw_set_halign(fa_left)
draw_set_font(global.fontGUI2)
draw_set_color(c_black)
draw_text(19, (30 - oSubscreenMenu.rectoffset), (string(global.playerhealth) + "/" + string(global.maxhealth)))
draw_text(109, (30 - oSubscreenMenu.rectoffset), (string(global.missiles) + "/" + string(global.maxmissiles)))
if (global.stanks > 0)
    draw_text(211, (30 - oSubscreenMenu.rectoffset), (string(global.smissiles) + "/" + string(global.maxsmissiles)))
if (global.ptanks > 0)
    draw_text(275, (30 - oSubscreenMenu.rectoffset), (string(global.pbombs) + "/" + string(global.maxpbombs)))
draw_set_color(c_white)
draw_text(18, (29 - oSubscreenMenu.rectoffset), (string(global.playerhealth) + "/" + string(global.maxhealth)))
draw_text(128, (29 - oSubscreenMenu.rectoffset), (string(global.missiles) + "/" + string(global.maxmissiles)))
if (global.stanks > 0)
    draw_text(210, (29 - oSubscreenMenu.rectoffset), (string(global.smissiles) + "/" + string(global.maxsmissiles)))
if (global.ptanks > 0)
    draw_text(274, (29 - oSubscreenMenu.rectoffset), (string(global.pbombs) + "/" + string(global.maxpbombs)))
draw_set_font(global.fontMenuSmall)
draw_set_color(c_white)
draw_set_halign(fa_right)
draw_text(318, (229 + oSubscreenMenu.rectoffset), "[Select] -> Logs")
draw_set_halign(fa_left)
shader_reset()
