global.mapoffsetx = 35
global.mapoffsety = 47
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 4
make_escape_sequence_fx(2)
if (global.event[203] > 0)
{
    with (oA4EscapeControl)
    {
        gototemp = 50
        alarm[0] = 1
    }
}
if (global.item[0] == 0 && (global.ptanks == 0 || (global.ptanks == 1 && global.event[203] > 0 && global.event[203] < 9)))
{
    with (130658)
        instance_destroy()
    with (130660)
        instance_destroy()
}
