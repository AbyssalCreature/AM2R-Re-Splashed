global.curropt = 0
lastitem = 3
active = 0
alarm[0] = 5
event_user(0)
with (oSS_Fg)
    op_text1 = get_text("Subscreen", "Title_Options")
tip[0] = get_text("PauseMenu", "Resume_Tip")
tip[1] = get_text("PauseMenu", "Restart_Tip")
tip[2] = get_text("PauseMenu", "Options_Tip")
tip[3] = get_text("PauseMenu", "Quit_Tip")
global.tiptext = tip[global.curropt]
