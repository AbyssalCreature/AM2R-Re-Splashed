if ((!instance_exists(oQueenFireball)) && (!sfx_isplaying(musQueen3)))
{
    if (instance_exists(oQueen) || global.ingame == 0)
    {
        mus_play(musQueen3)
        oMusicV2.bossbgm = 347
    }
}
else
    alarm[7] = 1
