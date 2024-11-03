if other.ibeam
{
    frozen = 300
    PlaySoundMono(sndFreezeHit)
    with (other.id)
    {
        event_user(0)
        instance_destroy()
    }
}
else
{
    wiggle = 45
    with (other.id)
    {
        event_user(1)
        instance_destroy()
    }
}
