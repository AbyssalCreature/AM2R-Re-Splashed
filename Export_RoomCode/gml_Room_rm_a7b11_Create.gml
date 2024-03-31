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
    with (147731)
        instance_destroy()
    tile_layer_delete(-101)
    with (147732)
        instance_destroy()
    with (147727)
        instance_destroy()
    tile_layer_delete(-102)
    with (147733)
        instance_destroy()
    with (147721)
        instance_destroy()
    tile_layer_delete(-103)
    with (147734)
        instance_destroy()
    tile_layer_delete(-104)
}
