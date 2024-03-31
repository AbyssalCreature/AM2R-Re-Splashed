global.mapoffsetx = 57
global.mapoffsety = 30
global.watertype = 0
global.waterlevel = 0
global.floormaterial = 5
global.darkness = 3
global.objdeactivate = 0
SoundFX_Preset(2)
if (oControl.mod_randomgamebool == 1)
{
    if (oControl.mod_septoggs_bombjumps_easy == 0 && global.item[0] == 1)
    {
        with (121234)
            instance_destroy()
        with (121235)
            instance_destroy()
        with (121236)
            instance_destroy()
    }
    else if (global.item[2] == 1 || global.item[6] == 1 || global.item[4] == 1)
    {
        with (121234)
            instance_destroy()
        with (121235)
            instance_destroy()
        with (121236)
            instance_destroy()
    }
    else
    {
        with (121151)
            instance_destroy()
        tile_layer_delete_at(-105, 848, 192)
    }
}
else
{
    with (121234)
        instance_destroy()
    with (121235)
        instance_destroy()
    with (121236)
        instance_destroy()
}
