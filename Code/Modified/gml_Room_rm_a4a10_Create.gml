global.mapoffsetx = 33
global.mapoffsety = 33
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 3
mus_change_itemroom()
if (global.event[200] == 0)
    global.darkness = 3
scan_log(26, get_text("ScanEvents", "ScanEnvironment"), 120, 0)
