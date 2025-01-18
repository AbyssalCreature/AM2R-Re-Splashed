global.mapoffsetx = 37
global.mapoffsety = 13
global.waterlevel = 0
global.watertype = 0
global.save_room = 1
global.floormaterial = 1
SoundFX_Preset(1)
if (instance_number(oCharacter) > 0)
    mus_change(mus_get_main_song())
else
    oMusicV2.currentbgm = mus_get_main_song()
