widescreen = oControl.widescreen
widescreen_space = oControl.widescreen_space
default_title = get_text("Subscreen", "Title_Logs")
global.curropt = 0
i = 59
repeat (60)
{
    logobj[i] = 0
    i -= 1
}
active = 0
rectoffset = 0
expanded = 0
targety = 0
targetx = ((view_wview[0] / 2) + (widescreen_space / 2))
drawtarg = targetx
x = targetx
timer = 0
view_object[0] = id
alarm[0] = 5
if (!expanded)
    oSS_Fg.logtitle = default_title
surf = surface_create((149 + widescreen_space), 137)
scroll = 0
lines = 0
currentline = 0
logtext = ""
title = default_title
load_logs_list()
i = 0
j = 0
lognum = 0
create_log_label(cat[0])
create_log_entry(0)
create_log_entry(1)
create_log_entry(3)
create_log_entry(4)
create_log_entry(5)
create_log_entry(6)
j += 1
create_log_label(cat[1])
create_log_entry(10)
create_log_entry(11)
create_log_entry(12)
create_log_entry(13)
create_log_entry(14)
create_log_entry(15)
create_log_entry(16)
j += 1
create_log_label(cat[2])
create_log_entry(20)
create_log_entry(21)
create_log_entry(22)
create_log_entry(23)
create_log_entry(24)
create_log_entry(25)
create_log_entry(26)
create_log_entry(27)
create_log_entry(28)
create_log_entry(40)
create_log_entry(29)
create_log_entry(44)
j += 1
create_log_label(cat[3])
create_log_entry(30)
create_log_entry(32)
create_log_entry(33)
create_log_entry(34)
create_log_entry(35)
create_log_entry(36)
create_log_entry(37)
create_log_entry(38)
j += 1
create_log_label(cat[4])
create_log_entry(41)
create_log_entry(42)
create_log_entry(43)
create_log_entry(45)
event_user(0)
