op1 = instance_create(x, y, oPauseOption)
op1.optionid = 0
op1.label = get_text("PauseMenu", "Resume")
op2 = instance_create(x, (y + 16), oPauseOption)
op2.optionid = 1
if (global.saxmode || global.lobbyLocked || global.currentroom == 55 || global.currentroom == 91 || global.currentroom == 128 || global.currentroom == 206 || global.currentroom == 282 || global.currentroom == 281 || global.currentroom == 276 || global.currentroom == 277 || global.currentroom == 205 || global.currentroom == 208 || global.currentroom == 207 || global.currentroom == 387)
    op2.enabled = 0
op2.label = get_text("PauseMenu", "Restart")
op3 = instance_create(x, (y + 32), oPauseOption)
op3.optionid = 2
op3.label = get_text("PauseMenu", "Options")
op4 = instance_create(x, (y + 48), oPauseOption)
op4.optionid = 3
op4.label = get_text("PauseMenu", "Quit")
