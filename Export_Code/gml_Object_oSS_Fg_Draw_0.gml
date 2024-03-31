draw_set_color(c_black)
draw_set_alpha(1)
draw_rectangle((view_xview[0] - (widescreen_space / 2)), view_yview[0], ((view_xview[0] + 330) + (widescreen_space / 2)), ((view_yview[0] + 41) - rectoffset), false)
draw_rectangle((view_xview[0] - (widescreen_space / 2)), ((view_yview[0] + 198) + rectoffset), ((view_xview[0] + 330) + (widescreen_space / 2)), (view_yview[0] + 250), false)
if (global.ssmode == 0)
{
    if (oControl.mod_collecteditemsmap == 1 && itemcollunlock)
    {
        if widescreen
        {
            draw_background_ext(bg_SubScrBottom, (view_xview[0] - 64), ((view_yview[0] + 210) + rectoffset), 2, 1, 0, -1, ealpha)
            draw_background_ext(bg_SubScrBottom, (view_xview[0] + 320), ((view_yview[0] + 210) + rectoffset), 2, 1, 0, -1, ealpha)
        }
        draw_background_ext(scr_SubScrTop_swap(), view_xview[0], ((view_yview[0] + 210) + rectoffset), 1, 1, 0, -1, ealpha)
    }
    draw_background_ext(bg_SubScrBottom, (view_xview[0] - (widescreen_space / 2)), ((view_yview[0] + 30) - rectoffset), (10 + (4 * widescreen)), 1, 0, -1, ealpha)
    if widescreen
    {
        draw_background_ext(bg_SubScrBottom, (view_xview[0] - 64), ((view_yview[0] + 198) + rectoffset), 2, 1, 0, -1, ealpha)
        draw_background_ext(bg_SubScrBottom, (view_xview[0] + 320), ((view_yview[0] + 198) + rectoffset), 2, 1, 0, -1, ealpha)
    }
    if (oControl.mod_percentofitems == 1)
        draw_background_ext(bg_MapBottom2, view_xview[0], ((view_yview[0] + 198) + rectoffset), 1, 1, 0, -1, ealpha)
    else
        draw_background_ext(bg_MapBottom, view_xview[0], ((view_yview[0] + 198) + rectoffset), 1, 1, 0, -1, ealpha)
    draw_set_alpha(ealpha)
    draw_set_font(global.fontGUI2)
    draw_set_halign(fa_center)
    draw_set_color(c_black)
    draw_text((view_xview[0] + 161), ((view_yview[0] + 30) - rectoffset), maptext)
    draw_set_color(c_white)
    draw_text((view_xview[0] + 160), ((view_yview[0] + 29) - rectoffset), maptext)
    draw_set_halign(fa_left)
    if (hidetext == 0)
    {
        draw_set_color(c_black)
        draw_text((view_xview[0] + 18), ((view_yview[0] + 198) + rectoffset), timetext)
        if (oControl.mod_percentofitems == 1)
            draw_text((view_xview[0] + 215), ((view_yview[0] + 198) + rectoffset), (string(round(((global.itemstaken / 88) * 100))) + "%"))
        draw_text((view_xview[0] + 260), ((view_yview[0] + 198) + rectoffset), metrtext1)
        draw_text((view_xview[0] + 304), ((view_yview[0] + 198) + rectoffset), metrtext2)
        if (oControl.mod_collecteditemsmap == 1 && itemcollunlock)
        {
            draw_text((view_xview[0] + 19), ((view_yview[0] + 210) + rectoffset), (string(global.etanks) + "/10"))
            draw_text((view_xview[0] + 129), ((view_yview[0] + 210) + rectoffset), (string(global.mtanks) + "/44"))
            if (global.stanks > 0)
                draw_text((view_xview[0] + 211), ((view_yview[0] + 210) + rectoffset), (string(global.stanks) + "/10"))
            if (global.ptanks > 0)
                draw_text((view_xview[0] + 275), ((view_yview[0] + 210) + rectoffset), (string(global.ptanks) + "/10"))
        }
        draw_set_color(c_white)
        draw_text((view_xview[0] + 17), ((view_yview[0] + 197) + rectoffset), timetext)
        if (oControl.mod_percentofitems == 1)
            draw_text((view_xview[0] + 214), ((view_yview[0] + 197) + rectoffset), (string(round(((global.itemstaken / 88) * 100))) + "%"))
        draw_text((view_xview[0] + 259), ((view_yview[0] + 197) + rectoffset), metrtext1)
        draw_text((view_xview[0] + 303), ((view_yview[0] + 197) + rectoffset), metrtext2)
        if (oControl.mod_collecteditemsmap == 1 && itemcollunlock)
        {
            draw_text((view_xview[0] + 18), ((view_yview[0] + 209) + rectoffset), (string(global.etanks) + "/10"))
            draw_text((view_xview[0] + 128), ((view_yview[0] + 209) + rectoffset), (string(global.mtanks) + "/44"))
            if (global.stanks > 0)
                draw_text((view_xview[0] + 210), ((view_yview[0] + 209) + rectoffset), (string(global.stanks) + "/10"))
            if (global.ptanks > 0)
                draw_text((view_xview[0] + 274), ((view_yview[0] + 209) + rectoffset), (string(global.ptanks) + "/10"))
        }
        draw_set_font(global.fontMenuSmall2)
        if (oMapCursor.state == 0)
        {
            draw_txt_1button((view_xview[0] + 2), ((view_yview[0] + 225) + rectoffset), tip2text, 1, "Menu1", ealpha)
            if itemcollunlock
                draw_txt_1button((view_xview[0] + 125), ((view_yview[0] + 225) + rectoffset), tip6text, 1, "Missile", ealpha)
        }
        if (oMapCursor.state == 1)
        {
            if (oControl.mod_collecteditemsmap == 1 && itemcollunlock)
            {
                draw_set_color(c_black)
                draw_set_alpha(1)
                draw_rectangle((view_xview[0] - (oControl.widescreen_space / 2)), ((view_yview[0] + 212) + rectoffset), ((view_xview[0] + 330) + (oControl.widescreen_space / 2)), ((view_yview[0] + 232) + rectoffset), false)
            }
            draw_txt_1button((view_xview[0] + 2), ((view_yview[0] + 212) + rectoffset), tip3text, 1, "DPad", ealpha)
            draw_txt_1button((view_xview[0] + 2), ((view_yview[0] + 225) + rectoffset), tip4text, 1, "Menu2", ealpha)
        }
        if (oMapCursor.state == 2)
        {
            draw_txt_1button((view_xview[0] + 2), ((view_yview[0] + 225) + rectoffset), tip5text, 1, "Menu1", ealpha)
            if itemcollunlock
                draw_txt_1button((view_xview[0] + 125), ((view_yview[0] + 225) + rectoffset), tip6text, 1, "Missile", ealpha)
        }
    }
}
if (global.ssmode == 1)
{
    if (widescreen == 1)
    {
        draw_background_ext(bg_SubScrBottom, (view_xview[0] - 64), ((view_yview[0] + 30) - rectoffset), 2, 1, 0, -1, ealpha)
        draw_background_ext(bg_SubScrBottom, (view_xview[0] + 320), ((view_yview[0] + 30) - rectoffset), 2, 1, 0, -1, ealpha)
    }
    draw_background_ext(scr_SubScrTop_swap(), 0, (30 - rectoffset), 1, 1, 0, -1, ealpha)
    draw_background_ext(bg_SubScrBottom, (view_xview[0] - (widescreen_space / 2)), ((view_yview[0] + 198) + rectoffset), (10 + (4 * widescreen)), 1, 0, -1, ealpha)
    draw_set_alpha(ealpha)
    draw_txt_1button((view_xview[0] + 160), ((view_yview[0] + 196) + rectoffset), oSubscreenMenu.dtext, 0, "Fire", ealpha)
    draw_set_font(global.fontGUI2)
    draw_set_color(c_black)
    draw_text(20, (30 - rectoffset), ((string(ceil(global.playerhealth)) + "/") + string(global.maxhealth)))
    draw_text(global.percent1M, (30 - rectoffset), ((string(global.missiles) + "/") + string(global.maxmissiles)))
    if (global.stanks > 0)
        draw_text(global.percent1SM, (30 - rectoffset), ((string(global.smissiles) + "/") + string(global.maxsmissiles)))
    if (global.ptanks > 0)
        draw_text(global.percent1PB, (30 - rectoffset), ((string(global.pbombs) + "/") + string(global.maxpbombs)))
    draw_set_color(c_white)
    draw_text(19, (29 - rectoffset), ((string(ceil(global.playerhealth)) + "/") + string(global.maxhealth)))
    draw_text(global.percent2M, (29 - rectoffset), ((string(global.missiles) + "/") + string(global.maxmissiles)))
    if (global.stanks > 0)
        draw_text(global.percent2SM, (29 - rectoffset), ((string(global.smissiles) + "/") + string(global.maxsmissiles)))
    if (global.ptanks > 0)
        draw_text(global.percent2PB, (29 - rectoffset), ((string(global.pbombs) + "/") + string(global.maxpbombs)))
    if (hidetext == 0)
    {
        draw_background(bg_SubScrTipArrow1, (view_xview[0] + 2), ((view_yview[0] + 217) + rectoffset))
        draw_set_font(global.fontMenuSmall2)
        draw_set_color(c_white)
        draw_text((view_xview[0] + 25), ((view_yview[0] + 212) + rectoffset), etiptext1)
        draw_txt_1button((view_xview[0] + 2), ((view_yview[0] + 225) + rectoffset), etiptext2, 1, "Menu1", ealpha)
    }
}
if (global.ssmode == 2)
{
    draw_background_ext(bg_SubScrBottom, (view_xview[0] - (widescreen_space / 2)), ((view_yview[0] + 30) - rectoffset), (10 + (4 * widescreen)), 1, 0, -1, ealpha)
    draw_background_ext(bg_SubScrBottom, (view_xview[0] - (widescreen_space / 2)), ((view_yview[0] + 198) + rectoffset), (10 + (4 * widescreen)), 1, 0, -1, ealpha)
    draw_set_alpha(ealpha)
    draw_set_font(global.fontGUI2)
    draw_set_halign(fa_center)
    draw_set_color(c_black)
    draw_text((view_xview[0] + 161), ((view_yview[0] + 30) - rectoffset), logtitle)
    draw_set_color(c_white)
    draw_text((view_xview[0] + 160), ((view_yview[0] + 29) - rectoffset), logtitle)
    draw_set_halign(fa_left)
    if (hidetext == 0)
    {
        draw_set_font(global.fontMenuSmall2)
        draw_set_color(c_white)
    }
}
if (global.ssmode == 3)
{
    draw_background_ext(bg_SubScrBottom, (view_xview[0] - (widescreen_space / 2)), ((view_yview[0] + 30) - rectoffset), (10 + (4 * widescreen)), 1, 0, -1, ealpha)
    draw_background_ext(bg_SubScrBottom, (view_xview[0] - (widescreen_space / 2)), ((view_yview[0] + 198) + rectoffset), (10 + (4 * widescreen)), 1, 0, -1, ealpha)
    draw_set_alpha(ealpha)
    draw_set_font(global.fontGUI2)
    draw_set_halign(fa_center)
    draw_set_color(c_black)
    draw_text((view_xview[0] + 161), ((view_yview[0] + 30) - rectoffset), opt_text1)
    draw_set_color(c_white)
    draw_text((view_xview[0] + 160), ((view_yview[0] + 29) - rectoffset), opt_text1)
    draw_set_halign(fa_left)
    draw_set_alpha(ealpha)
    draw_set_font(global.fontMenuSmall2)
    draw_set_halign(fa_center)
    draw_set_color(c_black)
    draw_text((view_xview[0] + 161), ((view_yview[0] + 197) + rectoffset), global.tiptext)
    draw_set_color(c_white)
    draw_text((view_xview[0] + 160), ((view_yview[0] + 196) + rectoffset), global.tiptext)
    draw_set_halign(fa_left)
}
if (hidechangetip == 0 && hidetext == 0 && oSS_Control.canchange)
{
    draw_set_font(global.fontMenuSmall2)
    draw_set_color(c_white)
    draw_txt_1button((view_xview[0] + 318), ((view_yview[0] + 225) + rectoffset), tip1text, 2, "Menu2", ealpha)
}
if hidetext
{
    draw_background_ext(bg_SubScrBottom, view_xview[0], ((view_yview[0] + 30) - rectoffset), 10, 1, 0, -1, ealpha)
    draw_background_ext(bg_SubScrBottom, view_xview[0], ((view_yview[0] + 198) + rectoffset), 10, 1, 0, -1, ealpha)
    if (oControl.mod_collecteditemsmap == 1 && itemcollunlock)
    {
        draw_set_color(c_black)
        draw_set_alpha(1)
        draw_rectangle((view_xview[0] - (oControl.widescreen_space / 2)), ((view_yview[0] + 212) + rectoffset), ((view_xview[0] + 330) + (oControl.widescreen_space / 2)), ((view_yview[0] + 232) + rectoffset), false)
    }
}
