global.mapoffsetx = 16
global.mapoffsety = 52
global.waterlevel = 0
global.floormaterial = 1
if (global.lavastate == 9 && (!instance_exists(oClient)))
    make_liquid(1, 400, 0, 0, 0, 0, 0)
