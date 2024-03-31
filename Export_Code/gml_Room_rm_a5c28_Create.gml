global.mapoffsetx = 68
global.mapoffsety = 48
make_liquid(0, 80, 0, 0, 0, 0, 1)
global.save_room = 19
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
