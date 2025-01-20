global.curropt = 1
lastitem = 1
active = 0
h = 0
targeth = 33
fadein = 1
fadeout = 0
lblstr = get_text("Title", "GameSlot_OverwriteConfirm")
yesstr = get_text("GlobalOptions", "Yes")
nostr = get_text("GlobalOptions", "No")
draw_set_font(global.fontGUI2)
w = (max(string_width(lblstr), string_width(yesstr), string_width(nostr)) + 10)
if oControl.mod_insanitymode
    mycolor = make_color_rgb(255, 36, 36)
else
    mycolor = make_color_rgb(2, 207, 118)
