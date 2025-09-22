global.curropt = 0
lastitem = 2
active = 0
alarm[0] = 5
h = 0
targeth = 33
fadein = 1
fadeout = 0
continuestr = get_text("Title", "GameSlot_Continue")
copystr = get_text("Title", "GameSlot_Copy")
erasestr = get_text("Title", "GameSlot_Erase")
if (global.saveslot == 0)
{
    x = 270
    y = 60
}
if (global.saveslot == 1)
{
    x = 270
    y = 104
}
if (global.saveslot == 2)
{
    x = 270
    y = 148
}
draw_set_font(global.fontGUI2)
w = (max(string_width(continuestr), string_width(copystr), string_width(erasestr))) + 10
if oControl.mod_insanitymode
    mycolor = make_color_rgb(255, 36, 36)
else
    mycolor = make_color_rgb(2, 207, 118)
