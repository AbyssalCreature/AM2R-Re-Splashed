mus_stop_muted()
global.curropt = 0
lastitem = 3
active = 0
alarm[0] = 5
alarm[2] = 60
i = 0
repeat (4)
{
    global.canedit[i] = 1
    i += 1
}
timer = 0
changedfx = 0
event_user(0)
tip[0] = get_text("OptionsSound", "SoundVolume_Tip")
tip[1] = get_text("OptionsSound", "MusicVolume_Tip")
tip[2] = get_text("ExtrasMenu", "LowHealthAlarm_Tip")
tip[3] = get_text("GlobalOptions", "ExitMain_Tip")
global.tiptext = tip[global.curropt]
