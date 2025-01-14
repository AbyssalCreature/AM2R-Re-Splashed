global.mapoffsetx = 7
global.mapoffsety = 20
global.waterlevel = 0
global.floormaterial = 1
global.objdeactivate = 0
if (global.event[303] != 2)
{
    tile_layer_hide(-99)
    tile_layer_hide(-98)
}
if (global.event[303] > 0)
{
    with (147759)
        instance_destroy()
    tile_layer_delete(-101)
    with (147760)
        instance_destroy()
    with (147755)
        instance_destroy()
    tile_layer_delete(-102)
    with (147761)
        instance_destroy()
    with (147749)
        instance_destroy()
    tile_layer_delete(-103)
    with (147762)
        instance_destroy()
    tile_layer_delete(-104)
}
if ((instance_exists(oClient) && (!global.sax)) || (!instance_exists(oClient)))
{
    with (oA7Crystal2)
        instance_destroy()
    with (oA7Crystal3)
        instance_destroy()
    with (oA7Crystal4)
        instance_destroy()
    with (oA7Crystal5)
        instance_destroy()
    with (oA7Crystal6)
        instance_destroy()
    with (oA7Crystal7)
        instance_destroy()
}
