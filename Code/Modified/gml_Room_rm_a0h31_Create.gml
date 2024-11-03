global.mapoffsetx = 43
global.mapoffsety = 44
global.watertype = 1
global.floormaterial = 1
if (global.lavastate <= 7)
    make_liquid(1, 192, 0, 0, 0, 0, 0)
else
    tile_layer_delete(-90)
mus_change(mus_get_main_song())
global.objdeactivate = 1
