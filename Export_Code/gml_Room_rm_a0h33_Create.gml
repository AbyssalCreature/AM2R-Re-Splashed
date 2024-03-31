global.mapoffsetx = 43
global.mapoffsety = 51
global.watertype = 0
global.waterlevel = 0
global.floormaterial = 1
global.save_room = 20
global.objdeactivate = 1
if (instance_number(oCharacter) > 0)
    mus_change(mus_get_main_song())
else
    oMusicV2.currentbgm = mus_get_main_song()
