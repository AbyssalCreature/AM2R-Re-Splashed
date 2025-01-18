global.mapoffsetx = 10
global.mapoffsety = 23
global.waterlevel = 0
global.floormaterial = 3
if (global.lavastate <= 10)
    make_liquid(1, 200, 0, 0, 0, 0, 0)
else
    tile_layer_delete(-99)
mus_change(musItemAmb)
