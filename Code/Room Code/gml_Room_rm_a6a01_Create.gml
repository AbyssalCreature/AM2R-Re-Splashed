global.mapoffsetx = 34
global.mapoffsety = 53
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 1
if (global.event[203] > 0 || global.saxmode)
    tile_layer_delete(-110)
else
    tile_layer_delete(-111)
