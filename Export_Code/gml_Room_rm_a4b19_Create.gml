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
    with (131317)
        instance_destroy()
    with (131318)
        instance_destroy()
    with (131319)
        instance_destroy()
}
else
{
    with (131378)
        instance_destroy()
    with (131379)
        instance_destroy()
    with (131380)
        instance_destroy()
}
