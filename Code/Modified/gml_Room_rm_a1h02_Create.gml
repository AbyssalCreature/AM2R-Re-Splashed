global.mapoffsetx = 53
global.mapoffsety = 14
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 3
global.save_room = 3
SoundFX_Preset(1)
if (instance_number(oCharacter) > 0)
    mus_change(musCaveAmbience)
else
    oMusicV2.currentbgm = 260
