global.mapoffsetx = 51
global.mapoffsety = 13
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 3
if global.event[51]
{
    tile_layer_shift(-99, -32, 0)
    tile_layer_shift(-98, 32, 0)
    with (107633)
        instance_destroy()
}
mus_change(musCaveAmbience)
