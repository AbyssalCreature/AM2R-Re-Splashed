if (global.gotolog > -1 && global.ophudshowlogmsg == 1)
    global.ssmode = 2
s_map = surface_create(2048, 1024)
surface_set_target(s_map)
draw_surface_map()
surface_reset_target()
instance_create(0, 0, oSS_Bg)
instance_create(0, 0, oSS_Fg)
event_user(1)
active = 0
alarm[0] = 1
canchange = 1
modeindex = 0
if (global.gamemode == 3)
    modeindex = get_text("Title-Additions", "GameSlot_NewGame_ClassicMode")
if (global.gamemode == 4)
    modeindex = get_text("Title-Additions", "GameSlot_NewGame_AM2Random")
if (global.gamemode == 5)
    modeindex = get_text("Title-Additions", "GameSlot_NewGame_SplitRandom")
widescreen = oControl.widescreen
widescreen_space = oControl.widescreen_space
