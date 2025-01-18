global.mapoffsetx = 23
global.mapoffsety = 53
global.watertype = 0
global.waterlevel = 0
global.floormaterial = 1
global.save_room = 26
global.objdeactivate = 1
if (global.lavastate == 9)
    make_liquid(1, 160, 0, 0, 0, 0, 0)
if (instance_number(oCharacter) > 0)
    mus_change(mus_get_main_song())
else
    oMusicV2.currentbgm = mus_get_main_song()
