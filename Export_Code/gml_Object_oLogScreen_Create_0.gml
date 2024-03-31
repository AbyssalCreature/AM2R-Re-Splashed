widescreen = oControl.widescreen
widescreen_space = oControl.widescreen_space
global.curropt = 0
category = 0
category_text = ""
currentlog = 0
clognum = 0
dlognum = 0
logobj[0] = oTestKeys
sep = 16
active = 0
alarm[0] = 5
rectoffset = 0
surf = surface_create(130, 123)
scroll = 0
lines = 0
currentline = 0
text = ""
expanded = 0
expandable = 0
scrolltimer = 0
targety = 112
currenty = 112
load_logs()
if (global.gotolog < 10)
    category = 0
if (global.gotolog >= 10 && global.gotolog < 20)
    category = 1
if (global.gotolog >= 20 && global.gotolog < 30)
    category = 2
if (global.gotolog >= 30 && global.gotolog < 40)
    category = 3
if (global.gotolog >= 40 && global.gotolog < 50)
    category = 4
if (global.gotolog == 44)
    category = 2
create_log_category(category)
category_text = cat[category]
text = logobj[global.curropt].ltext
event_user(0)
