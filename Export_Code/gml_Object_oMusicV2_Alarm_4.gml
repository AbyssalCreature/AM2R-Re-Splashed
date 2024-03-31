if ((!sfx_isplaying(musMonsterAppear)) && (!sfx_isplaying(musOmegaFight)))
{
    if ((instance_exists(oMOmega) && oMOmega.myhealth > 0) || global.ingame == 0)
    {
        mus_play(musOmegaFight)
        oMusicV2.bossbgm = 284
    }
}
else
    alarm[4] = 1
