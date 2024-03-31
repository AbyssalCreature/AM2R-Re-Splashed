if (state == 0)
{
    draw_background(bgScoreScreenBG, (bgx - (oControl.widescreen_space / 2)), bgy)
    if (oControl.mod_fusion == 1)
        draw_background(bgScoreScreenPlayer_fusion, playerx, playery)
    else
        draw_background(bgScoreScreenPlayer, playerx, playery)
    draw_set_blend_mode(bm_add)
    if (oControl.mod_fusion == 1)
        draw_background_ext(bgScoreScreenPlayerGlow4, glow4x, glow4y, 1, 1, 0, -1, glow_alpha)
    else
    {
        draw_background_ext(bgScoreScreenPlayerGlow1, glow1x, glow1y, 1, 1, 0, -1, glow_alpha)
        draw_background_ext(bgScoreScreenPlayerGlow2, glow2x, glow2y, 1, 1, 0, -1, glow_alpha)
        draw_background_ext(bgScoreScreenPlayerGlow3, glow3x, glow3y, 1, 1, 0, -1, glow_alpha)
    }
    draw_set_blend_mode(bm_normal)
    draw_set_color(c_white)
    draw_set_font(global.fontGUI2)
    draw_set_halign(fa_center)
    draw_set_alpha(tx1_alpha)
    draw_text(tx1x, tx1y, text1)
    draw_text(tx1x, (tx1y + 12), text1a)
    draw_set_alpha(tx2_alpha)
    draw_text(tx1x, (tx1y + 40), text2)
    draw_text(tx1x, (tx1y + 52), text2a)
    draw_set_halign(fa_left)
}
if (state == 1)
{
    draw_background(ending, -53, 0)
    draw_set_font(global.fontGUI2)
    draw_set_halign(fa_right)
    draw_set_color(c_black)
    draw_set_alpha(tx1_alpha)
    draw_text(((tx2x - 1) + widespace), (tx2y - 1), text3)
    draw_text(((tx2x - 1) + widespace), (tx2y + 1), text3)
    draw_text(((tx2x + 1) + widespace), (tx2y - 1), text3)
    draw_text(((tx2x + 1) + widespace), (tx2y + 1), text3)
    draw_text(((tx2x - 1) + widespace), tx2y, text3)
    draw_text(((tx2x + 1) + widespace), tx2y, text3)
    draw_set_color(c_white)
    draw_set_alpha(tx1_alpha)
    draw_text((tx2x + widespace), tx2y, text3)
    draw_set_halign(fa_left)
}
if (state == 2)
{
    draw_set_font(global.fontGUI2)
    draw_set_halign(fa_center)
    draw_set_color(c_white)
    draw_set_alpha(tx1_alpha)
    draw_text(160, 100, text4)
    draw_set_halign(fa_right)
    draw_set_font(global.fontMenuSmall2)
    draw_set_alpha(tx2_alpha)
    draw_text((307 + widespace), 220, text5)
    draw_set_halign(fa_left)
}
if fadeout
{
    draw_set_alpha(ralpha)
    draw_set_color(c_black)
    draw_rectangle(-53, 0, 1000, 1000, false)
    draw_set_alpha(1)
}
if (walpha > 0)
{
    draw_set_alpha(walpha)
    draw_set_color(c_white)
    draw_rectangle(-53, 0, 1000, 1000, false)
    draw_set_alpha(1)
}
