global.mapoffsetx = 31
global.mapoffsety = 55
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 4
make_escape_sequence_fx(2)
if (global.event[203] > 0)
{
    with (oA4EscapeControl)
    {
        gototemp = 30
        alarm[0] = 1
    }
}
if (oControl.mod_randomgamebool == 1 && global.item[7] == 0)
{
    with (131290)
        instance_destroy()
    with (131291)
        instance_destroy()
    with (131292)
        instance_destroy()
}
else
{
    with (131351)
        instance_destroy()
    with (131352)
        instance_destroy()
    with (131353)
        instance_destroy()
}
