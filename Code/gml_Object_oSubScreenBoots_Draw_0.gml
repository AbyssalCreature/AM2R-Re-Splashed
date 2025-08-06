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
draw_sprite(sprite_index, -1, x, y)
draw_set_color(c_white)
draw_set_font(global.fontMenuTiny)
draw_set_alpha(1)
if global.item[4]
{
    draw_sprite(sSubScrButton, global.hijump, (x - 28), (y - 28))
    draw_text((x - 20), (y - 29 + oControl.subScrItemOffset), hijump)
}
if global.item[6]
{
    draw_sprite(sSubScrButton, global.spacejump, (x - 28), (y - 19))
    draw_text((x - 20), (y - 20 + oControl.subScrItemOffset), space)
}
if global.item[7]
{
    draw_sprite(sSubScrButton, global.speedbooster, (x - 28), (y - 10))
    draw_text((x - 20), (y - 11 + oControl.subScrItemOffset), speedbooster)
}
if drawlines
{
    if (global.curropt == 14)
    {
        draw_sprite_ext(sSubScrHilight, -1, (x - 28), (y - 28), 1, 1, 0, -1, halpha)
        draw_line((x - 34), (y - 26), (x - 50), (y - 26))
        draw_line((x - 50), (y - 26), (oSubScrPlayer.x + 21), (oSubScrPlayer.y + 157))
        draw_sprite_ext(sSubScrItem, -1, (oSubScrPlayer.x + 21), (oSubScrPlayer.y + 157), 1, 1, 0, -1, 1)
    }
    if (global.curropt == 15)
    {
        draw_sprite_ext(sSubScrHilight, -1, (x - 28), (y - 19), 1, 1, 0, -1, halpha)
        draw_line((x - 34), (y - 17), (x - 50), (y - 17))
        draw_line((x - 50), (y - 17), (oSubScrPlayer.x + 24), (oSubScrPlayer.y + 173))
        draw_sprite_ext(sSubScrItem, -1, (oSubScrPlayer.x + 24), (oSubScrPlayer.y + 173), 1, 1, 0, -1, 1)
    }
    if (global.curropt == 16)
    {
        draw_sprite_ext(sSubScrHilight, -1, (x - 28), (y - 10), 1, 1, 0, -1, halpha)
        draw_line((x - 34), (y - 8), (x - 50), (y - 8))
        draw_line((x - 50), (y - 8), (oSubScrPlayer.x + 31), (oSubScrPlayer.y + 192))
        draw_sprite_ext(sSubScrItem, -1, (oSubScrPlayer.x + 31), (oSubScrPlayer.y + 192), 1, 1, 0, -1, 1)
    }
}
draw_set_alpha(1)
draw_set_font(global.fontSubScr)
draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text((x + 1 - 30), (y + 4 - 45 + oControl.subScrHeaderOffset), boots)
draw_set_color(c_white)
draw_text((x - 30), (y + 3 - 45 + oControl.subScrHeaderOffset), boots)
shader_reset()
