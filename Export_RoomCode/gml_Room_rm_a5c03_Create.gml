global.mapoffsetx = 60
global.mapoffsety = 47
global.waterlevel = 0
global.watertype = 0
global.save_room = 17
global.floormaterial = 4
if (global.event[250] > 0)
{
    if (instance_number(oCharacter) > 0)
        mus_change(musArea5B)
    else
        oMusicV2.currentbgm = 281
}
else if (instance_number(oCharacter) > 0)
    mus_change(musArea5A)
else
    oMusicV2.currentbgm = 280
