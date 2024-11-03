global.mapoffsetx = 32
global.mapoffsety = 22
global.floormaterial = 4
if (global.event[101] == 1)
    make_liquid(0, 112, 1, 1, 0.05, 0.3, 0)
if (global.event[101] == 2)
    make_liquid(0, 208, 1, 1, 0.05, 0.3, 0)
if (global.event[101] == 3)
    make_liquid(0, 304, 1, 1, 0.05, 0.3, 0)
if (global.event[101] == 4)
    make_liquid(0, 432, 1, 1, 0.05, 0.3, 0)
mus_change(musArea2A)
instance_create(128, 64, scr_itemsopen(oControl.mod_150))
