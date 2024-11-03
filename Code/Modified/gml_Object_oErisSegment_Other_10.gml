if (state != 100)
{
    flashing = 10
    if (hp <= 0)
    {
        hp = 0
        state = 1
        statetime = 0
        sfx_stop(sndFreezeHit)
        sfx_play(sndFreezeHit)
    }
    else
        sfx_play(sndIceBeamHit)
}
