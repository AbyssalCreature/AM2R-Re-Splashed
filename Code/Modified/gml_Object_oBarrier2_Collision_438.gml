if (other.image_index < 2)
{
    if (frozen > 0 && global.icemissiles && (!other.smissile) && justfrozen)
        exit
    if frozen
        event_user(0)
    if ((!frozen) && global.icemissiles && (!other.smissile))
    {
        frozen = 300
        PlaySoundMono(sndFreezeHit)
        justfrozen = 1
        alarm[11] = 10
    }
}
