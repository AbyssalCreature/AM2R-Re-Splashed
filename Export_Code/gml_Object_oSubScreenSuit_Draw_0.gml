draw_sprite(sprite_index, -1, x, y)
draw_set_color(c_white)
draw_set_font(global.fontMenuTiny)
draw_set_alpha(1)
draw_sprite(sSubScrButton, global.currentsuit == 0, (x - 28), (y + 16))
draw_text((x - 20), ((y + 15) + oControl.subScrItemOffset), psuit)
if global.inventory[5]
{
    draw_sprite(sSubScrButton, global.currentsuit == 1, (x - 28), (y + 25))
    draw_text((x - 20), ((y + 24) + oControl.subScrItemOffset), vsuit)
}
if global.inventory[9]
{
    draw_sprite(sSubScrButton, global.currentsuit == 2, (x - 28), (y + 34))
    draw_text((x - 20), ((y + 33) + oControl.subScrItemOffset), gsuit)
}
draw_set_alpha(1)
draw_set_color(c_white)
if drawlines
{
    if (global.curropt == 0)
    {
        draw_sprite_ext(sSubScrHilight, -1, (x - 28), (y + 16), 1, 1, 0, -1, halpha)
        draw_line((x + 34), (y + 18), (x + 50), (y + 18))
        draw_line((x + 50), (y + 18), oSubScrPlayer.x, (oSubScrPlayer.y + 43))
        draw_sprite_ext(sSubScrItem, -1, oSubScrPlayer.x, (oSubScrPlayer.y + 43), 1, 1, 0, -1, 1)
    }
    if (global.curropt == 1)
    {
        draw_sprite_ext(sSubScrHilight, -1, (x - 28), (y + 25), 1, 1, 0, -1, halpha)
        draw_line((x + 34), (y + 27), (x + 50), (y + 27))
        draw_line((x + 50), (y + 27), oSubScrPlayer.x, (oSubScrPlayer.y + 43))
        draw_sprite_ext(sSubScrItem, -1, oSubScrPlayer.x, (oSubScrPlayer.y + 43), 1, 1, 0, -1, 1)
    }
    if (global.curropt == 2)
    {
        draw_sprite_ext(sSubScrHilight, -1, (x - 28), (y + 34), 1, 1, 0, -1, halpha)
        draw_line((x + 34), (y + 36), (x + 50), (y + 36))
        draw_line((x + 50), (y + 36), oSubScrPlayer.x, (oSubScrPlayer.y + 43))
        draw_sprite_ext(sSubScrItem, -1, oSubScrPlayer.x, (oSubScrPlayer.y + 43), 1, 1, 0, -1, 1)
    }
}
draw_set_alpha(1)
draw_set_font(global.fontSubScr)
draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text(((x + 1) - 30), (((y + 4) - 1) + oControl.subScrHeaderOffset), suit)
draw_set_color(c_white)
draw_text((x - 30), (((y + 3) - 1) + oControl.subScrHeaderOffset), suit)
