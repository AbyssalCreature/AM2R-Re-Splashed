global.mapoffsetx = 46
global.mapoffsety = 23
global.waterlevel = 0
if (global.lavastate <= 3)
    make_liquid(1, 224, 0, 0, 0, 0, 0)
else if (global.lavastate <= 5)
    make_liquid(1, 944, 0, 0, 0, 0, 0)
global.floormaterial = 1
mus_change(mus_get_main_song())
