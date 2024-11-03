global.mapoffsetx = 29
global.mapoffsety = 16
global.waterlevel = 0
global.floormaterial = 3
global.moverobj = 0
if (global.event[101] == 0)
    make_liquid(0, 1430, 1, 1, 0.05, 0.3, 1)
if (global.event[101] == 1)
    make_liquid(0, 1552, 1, 1, 0.05, 0.3, 1)
scan_log(23, get_text("ScanEvents", "ScanEnvironment"), 180, 0)
global.objdeactivate = 1
instance_create(3144, 608, scr_itemsopen(oControl.mod_163))
