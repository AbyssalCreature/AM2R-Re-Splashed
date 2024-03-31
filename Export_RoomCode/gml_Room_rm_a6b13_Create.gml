global.mapoffsetx = 17
global.mapoffsety = 35
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 5
global.darkness = 2
if (global.lavastate <= 10)
    make_liquid(1, 192, 0, 0, 0, 0, 0)
else
    tile_layer_delete(-99)
