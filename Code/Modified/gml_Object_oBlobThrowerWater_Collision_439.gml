if other.ibeam
{
    frozen = 300
    PlaySoundMono(sndFreezeHit)
    with (other.id)
    {
        event_user(0)
        if (!pbeam)
            instance_destroy()
    }
}
else if other.pbeam
{
    with (other.id)
        event_user(1)
}
else
{
    with (other.id)
    {
        event_user(1)
        instance_destroy()
    }
}
