if ((!instance_exists(oQueenFireball)) && (!sfx_isplaying(musQueen2)))
{
    if (instance_exists(oQueen) || global.ingame == 0)
    {
        mus_play(musQueen2)
        oMusicV2.bossbgm = 345
    }
}
else
    alarm[6] = 1
