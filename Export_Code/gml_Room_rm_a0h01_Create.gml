global.mapoffsetx = 16
global.mapoffsety = 3
global.waterlevel = 0
global.watertype = 0
global.save_room = 0
global.floormaterial = 2
load_timeofday_bgs(global.timeofday)
if (global.event[304] == 0)
{
    oMusicV2.currentbgm = mus_get_main_song()
    tile_layer_delete(-119)
}
else
    scan_log(44, get_text("Misc", "Translation"), 180, 1)
instance_create(2176, 376, oElderSeptogg)
if (global.timeofday == 2)
{
    instance_create(3808, 1096, oElderSeptogg)
    instance_create(4354, 862, oElderSeptogg)
    instance_create(1776, 816, oElderSeptogg)
    instance_create(3056, 1040, oElderSeptogg)
    instance_create(1700, 450, oElderSeptogg)
    instance_create(218, 168, oElderSeptogg)
    instance_create(192, 1075, oElderSeptogg)
    instance_create(736, 1046, oElderSeptogg)
    instance_create(1500, 1100, oElderSeptogg)
    instance_create(3001, 500, oElderSeptogg)
    instance_create(4280, 1050, oElderSeptogg)
}
