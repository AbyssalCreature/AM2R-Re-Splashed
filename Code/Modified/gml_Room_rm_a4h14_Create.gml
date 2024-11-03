global.mapoffsetx = 37
global.mapoffsety = 32
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 1
global.save_room = 15
if (global.event[200] == 0)
{
    if (instance_number(oCharacter) > 0)
        mus_change(musCaveAmbienceA4)
    else
        oMusicV2.currentbgm = 275
}
else if (instance_number(oCharacter) > 0)
    mus_change(musArea4A)
else
    oMusicV2.currentbgm = 276
