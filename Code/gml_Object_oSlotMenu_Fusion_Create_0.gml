oControl.mod_fusion = 0
global.curropt = 1
lastitem = 3
active = 0
alarm[0] = 5
h = -11
targeth = 33
fadein = 1
fadeout = 0
d0str = get_text("Title", "GameSlot_Easy")
d1str = get_text("Title", "GameSlot_Normal")
d2str = get_text("Title", "GameSlot_Hard")
d3str = get_text("Title-Additions", "GameSlot_NewGame_Fusion")
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
if (global.saveslot == 3)
{
    x = 270
    y = 192
}
draw_set_font(global.fontGUI2)
w = (max(string_width(d0str), string_width(d1str), string_width(d2str), string_width(d3str)) + 10)
if oControl.mod_insanitymode
    mycolor = make_color_rgb(255, 36, 36)
else
    mycolor = make_color_rgb(2, 207, 118)
