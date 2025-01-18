global.mapoffsetx = 42
global.mapoffsety = 33
global.watertype = 0
global.waterlevel = 0
global.floormaterial = 1
global.save_room = 13
if (instance_number(oCharacter) > 0)
    mus_change(mus_get_main_song())
else
    oMusicV2.currentbgm = mus_get_main_song()
