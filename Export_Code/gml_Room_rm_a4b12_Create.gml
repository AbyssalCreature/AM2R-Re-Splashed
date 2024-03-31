global.mapoffsetx = 33
global.mapoffsety = 56
global.waterlevel = 0
global.watertype = 0
global.floormaterial = 4
make_escape_sequence_fx(2)
if (global.event[203] == 0)
{
    if (instance_number(oCharacter) > 0)
        mus_change(musArea4B)
    else
        oMusicV2.currentbgm = 277
}
if (global.event[203] < 7)
    tile_layer_hide(-101)
else
{
    with (130778)
        instance_destroy()
}
global.save_room = 16
if (global.event[203] > 0 && room_get_name(room))
{
}
