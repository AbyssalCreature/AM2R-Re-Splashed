global.mapoffsetx = 23
global.mapoffsety = 15
if (global.lavastate == 0 || (global.lavastate > 0 && instance_exists(oBigQuake) && global.event[2] == 0))
    make_liquid(1, 400, 0, 0, 0, 0, 0)
else
{
    global.waterlevel = 0
    global.watertype = 0
}
