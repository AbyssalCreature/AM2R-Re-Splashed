if (frozen == 0)
{
    wiggle = 45
    if (global.icemissiles && (!other.smissile))
    {
        with (other.id)
            event_user(0)
        frozen = 300
        PlaySoundMono(sndFreezeHit)
        justfrozen = 1
        alarm[11] = 10
    }
    else
    {
        with (other.id)
            event_user(1)
    }
}
else
{
    event_user(0)
    with (other.id)
        event_user(0)
}
