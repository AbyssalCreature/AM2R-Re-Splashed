if ((!sfx_isplaying(musMonsterAppear)) && (!sfx_isplaying(musAlphaFight)))
{
    if ((instance_exists(oMAlpha) && oMAlpha.myhealth > 0) || global.ingame == 0)
    {
        mus_play(musAlphaFight)
        oMusicV2.bossbgm = 259
    }
}
else
    alarm[1] = 1
