global.mapoffsetx = 36
global.mapoffsety = 44
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 1
make_escape_sequence_fx(2)
if (global.event[203] == 0)
    tile_layer_delete(-101)
if (global.event[203] > 0)
{
    with (oA4EscapeControl)
    {
        gototemp = 60
        alarm[0] = 1
    }
}
