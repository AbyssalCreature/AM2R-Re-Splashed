draw_sprite(sprite_index, -1, x, y)
draw_set_color(c_white)
draw_set_font(global.fontMenuTiny)
draw_set_alpha(1)
scr_itemsmenu_swap()
if drawlines
{
    if (global.curropt == 3)
    {
        draw_sprite_ext(sSubScrHilight, -1, (x - 28), (y - 46), 1, 1, 0, -1, halpha)
        draw_line((x + 34), (y - 44), (x + 50), (y - 44))
        draw_line((x + 50), (y - 44), (oSubScrPlayer.x - 33), (oSubScrPlayer.y + 81))
        draw_sprite_ext(sSubScrItem, -1, (oSubScrPlayer.x - 33), (oSubScrPlayer.y + 81), 1, 1, 0, -1, 1)
    }
    if (global.curropt == 4)
    {
        draw_sprite_ext(sSubScrHilight, -1, (x - 28), (y - 37), 1, 1, 0, -1, halpha)
        draw_line((x + 34), (y - 35), (x + 50), (y - 35))
        draw_line((x + 50), (y - 35), (oSubScrPlayer.x - 33), (oSubScrPlayer.y + 81))
        draw_sprite_ext(sSubScrItem, -1, (oSubScrPlayer.x - 33), (oSubScrPlayer.y + 81), 1, 1, 0, -1, 1)
    }
    if (global.curropt == 5)
    {
        draw_sprite_ext(sSubScrHilight, -1, (x - 28), (y - 28), 1, 1, 0, -1, halpha)
        draw_line((x + 34), (y - 26), (x + 50), (y - 26))
        draw_line((x + 50), (y - 26), (oSubScrPlayer.x - 33), (oSubScrPlayer.y + 81))
        draw_sprite_ext(sSubScrItem, -1, (oSubScrPlayer.x - 33), (oSubScrPlayer.y + 81), 1, 1, 0, -1, 1)
    }
    if (global.curropt == 6)
    {
        draw_sprite_ext(sSubScrHilight, -1, (x - 28), (y - 19), 1, 1, 0, -1, halpha)
        draw_line((x + 34), (y - 17), (x + 50), (y - 17))
        draw_line((x + 50), (y - 17), (oSubScrPlayer.x - 33), (oSubScrPlayer.y + 81))
        draw_sprite_ext(sSubScrItem, -1, (oSubScrPlayer.x - 33), (oSubScrPlayer.y + 81), 1, 1, 0, -1, 1)
    }
    if (global.curropt == 7)
    {
        draw_sprite_ext(sSubScrHilight, -1, (x - 28), (y - 10), 1, 1, 0, -1, halpha)
        draw_line((x + 34), (y - 8), (x + 50), (y - 8))
        draw_line((x + 50), (y - 8), (oSubScrPlayer.x - 33), (oSubScrPlayer.y + 81))
        draw_sprite_ext(sSubScrItem, -1, (oSubScrPlayer.x - 33), (oSubScrPlayer.y + 81), 1, 1, 0, -1, 1)
    }
}
draw_set_alpha(1)
draw_set_font(global.fontSubScr)
draw_set_halign(fa_left)
draw_set_color(c_black)
draw_text(((x + 1) - 30), (((y + 4) - 63) + oControl.subScrHeaderOffset), beam)
draw_set_color(c_white)
draw_text((x - 30), (((y + 3) - 63) + oControl.subScrHeaderOffset), beam)
