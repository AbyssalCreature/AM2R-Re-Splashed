draw_sprite(sprite_index, -1, x, y)
draw_set_color(c_white)
draw_set_font(global.fontMenuTiny)
draw_set_alpha(1)
draw_sprite(sSubScrButton, global.morphball, (x - 28), (y + 16))
draw_text((x - 20), ((y + 15) + oControl.subScrItemOffset), morph)
if global.item[2]
{
    draw_sprite(sSubScrButton, global.spiderball, (x - 28), (y + 25))
    draw_text((x - 20), ((y + 24) + oControl.subScrItemOffset), spider)
}
if global.item[3]
{
    draw_sprite(sSubScrButton, global.jumpball, (x - 28), (y + 34))
    draw_text((x - 20), ((y + 33) + oControl.subScrItemOffset), spring)
}
if global.item[0]
{
    draw_sprite(sSubScrButton, global.bomb, (x - 28), (y + 43))
    draw_text((x - 20), ((y + 42) + oControl.subScrItemOffset), bomb)
}
if global.item[1]
{
    draw_sprite(sSubScrButton, global.powergrip, (x - 28), (y + 52))
    draw_text((x - 20), ((y + 51) + oControl.subScrItemOffset), pgrip)
}
if global.item[8]
{
    draw_sprite(sSubScrButton, global.screwattack, (x - 28), (y + 61))
    draw_text((x - 20), ((y + 60) + oControl.subScrItemOffset), sattack)
}
if drawlines
{
    if (global.curropt == 8)
    {
        draw_sprite_ext(sSubScrHilight, -1, (x - 28), (y + 16), 1, 1, 0, -1, halpha)
        draw_line((x - 34), (y + 18), (x - 50), (y + 18))
        draw_line((x - 50), (y + 18), oSubScrPlayer.x, (oSubScrPlayer.y + 60))
        draw_sprite_ext(sSubScrItem, -1, oSubScrPlayer.x, (oSubScrPlayer.y + 60), 1, 1, 0, -1, 1)
    }
    if (global.curropt == 9)
    {
        draw_sprite_ext(sSubScrHilight, -1, (x - 28), (y + 25), 1, 1, 0, -1, halpha)
        draw_line((x - 34), (y + 27), (x - 50), (y + 27))
        draw_line((x - 50), (y + 27), oSubScrPlayer.x, (oSubScrPlayer.y + 60))
        draw_sprite_ext(sSubScrItem, -1, oSubScrPlayer.x, (oSubScrPlayer.y + 60), 1, 1, 0, -1, 1)
    }
    if (global.curropt == 10)
    {
        draw_sprite_ext(sSubScrHilight, -1, (x - 28), (y + 34), 1, 1, 0, -1, halpha)
        draw_line((x - 34), (y + 36), (x - 50), (y + 36))
        draw_line((x - 50), (y + 36), oSubScrPlayer.x, (oSubScrPlayer.y + 60))
        draw_sprite_ext(sSubScrItem, -1, oSubScrPlayer.x, (oSubScrPlayer.y + 60), 1, 1, 0, -1, 1)
    }
    if (global.curropt == 11)
    {
        draw_sprite_ext(sSubScrHilight, -1, (x - 28), (y + 43), 1, 1, 0, -1, halpha)
        draw_line((x - 34), (y + 45), (x - 50), (y + 45))
        draw_line((x - 50), (y + 45), oSubScrPlayer.x, (oSubScrPlayer.y + 60))
        draw_sprite_ext(sSubScrItem, -1, oSubScrPlayer.x, (oSubScrPlayer.y + 60), 1, 1, 0, -1, 1)
    }
    if (global.curropt == 12)
    {
        draw_sprite_ext(sSubScrHilight, -1, (x - 28), (y + 52), 1, 1, 0, -1, halpha)
        draw_line((x - 34), (y + 54), (x - 50), (y + 54))
        draw_line((x - 50), (y + 54), (oSubScrPlayer.x + 35), (oSubScrPlayer.y + 95))
        draw_sprite_ext(sSubScrItem, -1, (oSubScrPlayer.x + 35), (oSubScrPlayer.y + 95), 1, 1, 0, -1, 1)
    }
    if (global.curropt == 13)
    {
        draw_sprite_ext(sSubScrHilight, -1, (x - 28), (y + 61), 1, 1, 0, -1, halpha)
        draw_line((x - 34), (y + 63), (x - 50), (y + 63))
        draw_line((x - 50), (y + 63), oSubScrPlayer.x, (oSubScrPlayer.y + 43))
        draw_sprite_ext(sSubScrItem, -1, oSubScrPlayer.x, (oSubScrPlayer.y + 43), 1, 1, 0, -1, 1)
    }
}
draw_set_alpha(1)
draw_set_font(global.fontSubScr)
draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text(((x + 1) - 30), (((y + 4) - 1) + oControl.subScrHeaderOffset), misc)
draw_set_color(c_white)
draw_text((x - 30), (((y + 3) - 1) + oControl.subScrHeaderOffset), misc)
