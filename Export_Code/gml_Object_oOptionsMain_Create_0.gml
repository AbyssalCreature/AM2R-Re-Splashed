global.curropt = 0
lastitem = 5
active = 0
alarm[0] = 5
event_user(0)
with (oSS_Fg)
    op_text1 = get_text("OptionsMain", "Title")
tip[0] = get_text("OptionsMain", "Display_Tip")
tip[1] = get_text("OptionsMain", "Sound_Tip")
tip[2] = get_text("OptionsMain", "Control_Tip")
tip[3] = get_text("ExtrasMenu", "Extras_Tip")
tip[4] = "Multiworld Settings"
tip[5] = get_text("GlobalOptions", "Exit_Tip")
global.tiptext = tip[global.curropt]
