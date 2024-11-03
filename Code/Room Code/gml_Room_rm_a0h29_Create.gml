global.mapoffsetx = 44
global.mapoffsety = 40
global.watertype = 0
global.waterlevel = 0
global.floormaterial = 1
if (global.lavastate <= 6)
    make_liquid(1, 424, 0, 0, 0, 0, 0)
with (oBlockSpeed)
    regentime = -1
instance_create(560, 448, scr_itemsopen(oControl.mod_55))
