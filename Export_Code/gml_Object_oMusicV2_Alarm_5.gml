if ((!sfx_isplaying(musQueenIntro)) && (!sfx_isplaying(musQueen)))
{
    if (instance_exists(oQueen) || global.ingame == 0)
    {
        mus_play(musQueen)
        oMusicV2.bossbgm = 291
        mus_stop(musQueen2)
        mus_stop(musQueen3)
    }
}
else
    alarm[5] = 1
