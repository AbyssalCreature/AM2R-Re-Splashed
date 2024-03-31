if (global.godmode == 0)
    global.godmode = 1
else if (global.godmode == 1)
    global.godmode = 0
if global.godmode
    popup_text("God mode on")
else
    popup_text("God mode off")
