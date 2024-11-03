global.mapoffsetx = 52
global.mapoffsety = 42
make_liquid(0, 1520, 0, 0, 0, 0, 1)
global.floormaterial = 1
if (global.event[250] > 0)
    mus_change(musArea5B)
else
    mus_change(musArea5A)
scan_log(28, get_text("ScanEvents", "ScanEnvironment"), 120, 0)
instance_create(528, 304, scr_itemsopen(oControl.mod_309))
