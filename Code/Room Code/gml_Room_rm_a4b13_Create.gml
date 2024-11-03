global.mapoffsetx = 32
global.mapoffsety = 56
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 4
make_escape_sequence_fx(2)
if (global.event[203] > 0)
{
    with (oA4EscapeControl)
    {
        gototemp = 20
        alarm[0] = 1
    }
}
if (global.event[203] > 1)
{
    with (130804)
        instance_destroy()
    with (130813)
        instance_destroy()
    tile_layer_delete(-101)
}
if (global.event[203] < 3)
    tile_layer_hide(-102)
if (global.event[203] < 4)
    tile_layer_hide(-103)
if (global.event[203] < 5)
    tile_layer_hide(-104)
if (global.event[203] < 6)
    tile_layer_hide(-105)
