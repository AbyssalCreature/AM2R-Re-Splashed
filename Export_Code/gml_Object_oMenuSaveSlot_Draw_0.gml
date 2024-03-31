if (global.saveslot == slot)
    hilight = 1
else
    hilight = 0
etankxoff = 4
tioffset = 93
proffset = 186
titleoffset = 4
if hilight
    fontcolor = c_white
else
    fontcolor = c_dkgray
draw_background(myslotbg, x, (y - 7))
if saveexists
    draw_background_ext(meticon, (x + 190), (y - 6), 1, 1, 0, fontcolor, 1)
if hilight
{
    draw_sprite(myslot, slot, (x - 19), (y - 7))
    draw_background_ext(bgSaveSlotLine1, x, (y + 18), 207, 1, 0, mycolor, 1)
}
else
    draw_sprite(myslotb, slot, (x - 19), (y - 7))
if saveexists
{
    if (setanks >= 1)
        draw_sprite_ext(sGUIETank, 1, (x + etankxoff), (y + 4), 1, 1, 0, fontcolor, 1)
    if (setanks >= 2)
        draw_sprite_ext(sGUIETank, 1, (x + etankxoff), (y + 10), 1, 1, 0, fontcolor, 1)
    if (setanks >= 3)
        draw_sprite_ext(sGUIETank, 1, ((x + etankxoff) + 6), (y + 4), 1, 1, 0, fontcolor, 1)
    if (setanks >= 4)
        draw_sprite_ext(sGUIETank, 1, ((x + etankxoff) + 6), (y + 10), 1, 1, 0, fontcolor, 1)
    if (setanks >= 5)
        draw_sprite_ext(sGUIETank, 1, ((x + etankxoff) + 12), (y + 4), 1, 1, 0, fontcolor, 1)
    if (setanks >= 6)
        draw_sprite_ext(sGUIETank, 1, ((x + etankxoff) + 12), (y + 10), 1, 1, 0, fontcolor, 1)
    if (setanks >= 7)
        draw_sprite_ext(sGUIETank, 1, ((x + etankxoff) + 18), (y + 4), 1, 1, 0, fontcolor, 1)
    if (setanks >= 8)
        draw_sprite_ext(sGUIETank, 1, ((x + etankxoff) + 18), (y + 10), 1, 1, 0, fontcolor, 1)
    if (setanks >= 9)
        draw_sprite_ext(sGUIETank, 1, ((x + etankxoff) + 24), (y + 4), 1, 1, 0, fontcolor, 1)
    if (setanks >= 10)
        draw_sprite_ext(sGUIETank, 1, ((x + etankxoff) + 24), (y + 10), 1, 1, 0, fontcolor, 1)
    draw_set_font(global.fontGUI)
    draw_set_halign(fa_center)
    draw_cool_text((x + tioffset), ((y + 3) + oControl.GUIOffset), timestring, c_black, fontcolor, fontcolor, 1)
    draw_set_font(global.fontGUI2)
    draw_set_halign(fa_right)
    draw_cool_text((x + proffset), (y + 2), (string(sprogress) + "%"), c_black, fontcolor, fontcolor, 1)
    draw_set_halign(fa_left)
    draw_set_color(fontcolor)
    draw_set_alpha(1)
    draw_set_font(global.fontGUI2)
    draw_text((x + 192), (y + 6), to_string_lz(smonsters))
    draw_set_alpha(1)
    draw_set_font(global.fontMenuSmall)
    draw_set_color(fontcolor)
    draw_text((x + titleoffset), (y - 9), title)
    draw_set_halign(fa_right)
    draw_text((x + 186), (y - 9), difftext)
    draw_set_halign(fa_left)
}
else
{
    draw_set_alpha(1)
    draw_set_font(global.fontGUI2)
    draw_set_halign(fa_center)
    draw_set_color(c_black)
    draw_text(((x + tioffset) + 1), (y + 4), newgamestr)
    draw_set_color(fontcolor)
    draw_text((x + tioffset), (y + 3), newgamestr)
    draw_set_halign(fa_left)
}
if (global.saveslot != slot && saveexists)
{
    if (smode == 3 || smode == 4 || smode == 5)
        draw_cool_text((x + 4), (y + 20), (string(modeindex) + sseed), c_black, c_gray, c_dkgray, 1)
}
else if (global.saveslot == slot && saveexists)
{
    if (smode == 3 || smode == 4 || smode == 5)
        draw_cool_text((x + 4), (y + 20), (string(modeindex) + sseed), c_black, c_white, c_silver, 1)
}
