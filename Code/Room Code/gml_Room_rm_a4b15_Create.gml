global.mapoffsetx = 33
global.mapoffsety = 58
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 4
make_escape_sequence_fx(2)
if (global.event[203] > 1)
{
    with (130853)
        instance_destroy()
    with (130856)
        instance_destroy()
    tile_layer_delete(-101)
}
