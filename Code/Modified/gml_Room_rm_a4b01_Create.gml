global.mapoffsetx = 33
global.mapoffsety = 42
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 4
make_escape_sequence_fx(1)
global.objdeactivate = 0
if (global.event[203] < 9)
{
    tile_layer_hide(-101)
    with (129396)
        y -= 240
    with (129397)
        y -= 240
    with (129399)
        y -= 240
    with (129398)
        y -= 240
}
else
{
    with (oA4BlastDoor)
        instance_destroy()
}
if (global.event[203] > 0 && global.event[203] < 9)
{
    with (oA4EscapeControl)
    {
        gototemp = 100
        alarm[0] = 1
    }
}
if (global.event[203] == 0 || global.event[203] == 9)
    mus_change(musArea4B)
