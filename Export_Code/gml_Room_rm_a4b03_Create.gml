global.mapoffsetx = 32
global.mapoffsety = 43
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 1
make_escape_sequence_fx(2)
if (global.event[203] > 0)
{
    with (oA4EscapeControl)
    {
        gototemp = 80
        alarm[0] = 1
    }
}
if (oControl.mod_randomgamebool == 1 && global.item[0] == 0 && (global.ptanks == 0 || (global.ptanks == 1 && global.event[203] > 0 && global.event[203] < 9)))
{
    with (129860)
        instance_destroy()
    with (129861)
        instance_destroy()
    with (129862)
        instance_destroy()
    with (129863)
        instance_destroy()
    with (129864)
        instance_destroy()
    with (129865)
        instance_destroy()
    with (129866)
        instance_destroy()
    with (129867)
        instance_destroy()
    with (129868)
        instance_destroy()
    with (129869)
        instance_destroy()
    with (129870)
        instance_destroy()
    with (129871)
        instance_destroy()
    with (129872)
        instance_destroy()
    with (129873)
        instance_destroy()
    with (129874)
        instance_destroy()
}
