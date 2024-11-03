global.mapoffsetx = 33
global.mapoffsety = 23
global.floormaterial = 4
make_liquid(0, 192, 0, 1, 0.01, 0.1, 0)
mus_change(musArea2A)
global.event[101] = 4
instance_create(56, 48, scr_itemsopen(oControl.mod_151))
