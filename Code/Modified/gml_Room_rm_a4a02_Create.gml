global.mapoffsetx = 34
global.mapoffsety = 39
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 4
global.save_room = 14
if (global.event[200] == 0)
    global.darkness = 3
scan_log(26, get_text("ScanEvents", "ScanEnvironment"), 120, 0)
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
