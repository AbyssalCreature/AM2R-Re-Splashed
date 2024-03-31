global.mapoffsetx = 43
global.mapoffsety = 15
global.waterlevel = 0
if (global.lavastate <= 1)
    make_liquid(1, 192, 0, 0, 0, 0, 0)
mus_change(mus_get_main_song())
global.floormaterial = 1
if instance_exists(oBigQuake)
{
    with (oBigQuake)
    {
        if (statetime < 590)
            statetime = 590
    }
}
if (oControl.mod_purerandombool == 1 || oControl.mod_splitrandom == 1 || global.gamemode == 2)
{
    with (102590)
        instance_destroy()
    with (102591)
        instance_destroy()
    with (102592)
        instance_destroy()
    with (102593)
        instance_destroy()
}
with (oBlockSpeed)
{
    regentime = 30
    depth = -112
    DEPTH = -112
    tileid = tile_layer_find(-100, x, y)
}
