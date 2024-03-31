if (room == rm_a2a04)
{
    with (oDoor)
        event_user(3)
    mus_fadeout(musArachnus)
    oMusicV2.bossbgm = 0
    mus_current_fadein()
}
if (room == rm_a8a11)
{
    with (oDoor)
        event_user(3)
    mus_fadeout(musGenesis)
    oMusicV2.bossbgm = 0
    mus_current_fadein()
    with (oA8RedLightFX)
        fadeout = 1
}
if (room == rm_a3a01)
{
    with (oCoreX)
        alarm[4] = 90
    with (oTorizoSpikes)
        event_user(0)
    with (oDoor)
        event_user(3)
    mus_fadeout(musTorizoB)
    oMusicV2.bossbgm = 0
    mus_current_fadein()
}
if (room == rm_a5b03a)
{
    with (oDoorA5)
        event_user(3)
    mus_fadeout(musEris)
    oMusicV2.bossbgm = 0
    mus_current_fadein()
}
