global.mapoffsetx = 9
global.mapoffsety = 23
global.waterlevel = 0
global.floormaterial = 3
global.save_room = 24
if (global.event[302] == 0)
{
    if (instance_number(oCharacter) > 0)
        mus_change(musArea7A)
    else
        oMusicV2.currentbgm = 286
}
else if (instance_number(oCharacter) > 0)
    mus_change(musArea7C)
else
    oMusicV2.currentbgm = 288
