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
if (oControl.mod_randomgamebool == 1 && global.inventory[0] == 0 && (global.ptanks == 0 || (global.ptanks == 1 && global.event[203] > 0 && global.event[203] < 9)))
{
    with (129833)
        instance_destroy()
    with (129834)
        instance_destroy()
    with (129835)
        instance_destroy()
    with (129836)
        instance_destroy()
    with (129837)
        instance_destroy()
    with (129838)
        instance_destroy()
    with (129839)
        instance_destroy()
    with (129840)
        instance_destroy()
    with (129841)
        instance_destroy()
    with (129842)
        instance_destroy()
    with (129843)
        instance_destroy()
    with (129844)
        instance_destroy()
    with (129845)
        instance_destroy()
    with (129846)
        instance_destroy()
    with (129847)
        instance_destroy()
}
