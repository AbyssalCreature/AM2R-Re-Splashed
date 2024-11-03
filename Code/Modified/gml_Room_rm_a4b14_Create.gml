global.mapoffsetx = 31
global.mapoffsety = 56
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 4
if (global.event[203] < 8)
    tile_layer_shift(-102, 0, -64)
else
{
    tile_layer_delete(-101)
    with (130839)
        instance_destroy()
}
make_escape_sequence_fx(2)
