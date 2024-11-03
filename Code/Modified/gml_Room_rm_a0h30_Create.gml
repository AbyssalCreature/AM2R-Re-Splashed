global.mapoffsetx = 40
global.mapoffsety = 41
if (global.lavastate <= 6)
    make_liquid(1, 176, 0, 0, 0, 0, 0)
else
{
    global.watertype = 0
    global.waterlevel = 0
    tile_layer_delete(-90)
}
global.floormaterial = 1
with (oBlockSpeed)
    regentime = -1
