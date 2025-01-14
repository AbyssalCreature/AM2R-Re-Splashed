global.mapoffsetx = 6
global.mapoffsety = 20
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 1
if (instance_exists(oClient) && global.saxmode)
{
    mus_change(musArea7C)
    if (global.event[302] == 0)
        global.monstersleft = 21
    with (oEggTrigger)
        instance_destroy()
    if (oControl.mod_monstersextremecheck == 1)
        oControl.mod_monstersextreme = 1
    global.event[302] = 1
}
