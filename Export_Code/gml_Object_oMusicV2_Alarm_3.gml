if ((!sfx_isplaying(musMonsterAppear)) && (!sfx_isplaying(musZetaFight)))
{
    if ((instance_exists(oMZeta) && oMZeta.myhealth > 0) || global.ingame == 0)
    {
        mus_play(musZetaFight)
        oMusicV2.bossbgm = 279
    }
}
else
    alarm[3] = 1
