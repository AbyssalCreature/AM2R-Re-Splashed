global.mapoffsetx = 52
global.mapoffsety = 24
global.watertype = 0
global.waterlevel = 0
global.save_room = 9
global.floormaterial = 1
SoundFX_Preset(1)
SetAmb_Monsters()
if (instance_number(oCharacter) > 0)
    mus_change(musCaveAmbience)
else
    oMusicV2.currentbgm = 260
