if (global.ingame == 1)
{
    global.monstersalive = 0
    mus_stop(musAlphaFight)
    with (oMusicV2)
    {
        alarm[1] = -1
        bossbgm = 0
    }
    mus_current_fadein()
}
