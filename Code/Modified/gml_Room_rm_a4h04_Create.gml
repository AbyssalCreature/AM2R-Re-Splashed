global.mapoffsetx = 31
global.mapoffsety = 30
if (global.lavastate <= 6)
    make_liquid(1, 2864, 0, 0, 0, 0, 1)
else
    tile_layer_delete(-90)
global.floormaterial = 1
global.objdeactivate = 1
global.darkness = 0
if (global.event[200] == 0)
    mus_change(musCaveAmbienceA4)
else
    mus_change(musArea4A)
with (oBlockPBomb)
    regentime = -1
if (global.event[200] == 0)
    mus_change(musCaveAmbienceA4)
else
    mus_change(musArea4A)
instance_create(16, 3104, scr_itemsopen(oControl.mod_258))
