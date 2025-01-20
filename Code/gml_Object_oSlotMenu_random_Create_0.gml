global.curropt = 0
lastitem = 2
active = 0
alarm[0] = 5
h = 0
targeth = 33
fadein = 1
fadeout = 0
d0str = get_text("Title-Additions", "GameSlot_NewGame_ClassicMode")
d1str = get_text("Title-Additions", "GameSlot_NewGame_SplitRandom")
d2str = get_text("Title-Additions", "GameSlot_NewGame_AM2Random")
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
w = (max(string_width(d0str), string_width(d1str)) + 10)
if oControl.mod_insanitymode
    mycolor = make_color_rgb(255, 36, 36)
else
    mycolor = make_color_rgb(2, 207, 118)
