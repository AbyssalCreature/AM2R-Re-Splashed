global.mapoffsetx = 32
global.mapoffsety = 45
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 4
make_escape_sequence_fx(2)
if (global.event[203] > 0)
    tile_layer_delete(-102)
else
    tile_layer_delete(-101)
if (global.event[203] > 0)
{
    with (oA4EscapeControl)
    {
        gototemp = 70
        alarm[0] = 1
    }
}
