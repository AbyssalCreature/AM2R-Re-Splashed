if ((!sfx_isplaying(musMonsterAppear)) && (!sfx_isplaying(musGammaFight)))
{
    if ((instance_exists(oMGamma) && oMGamma.myhealth > 0) || global.ingame == 0)
    {
        mus_play(musGammaFight)
        oMusicV2.bossbgm = 272
    }
}
else
    alarm[2] = 1
