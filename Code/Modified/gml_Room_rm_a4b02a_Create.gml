global.mapoffsetx = 35
global.mapoffsety = 42
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 1
global.objdeactivate = 1
make_escape_sequence_fx(2)
if (global.saxmode && global.item[0] == 0 && global.maxpbombs <= 3)
{
    with (oBlockBombChain)
        instance_destroy()
    with (oBlockShoot)
        instance_destroy()
}
