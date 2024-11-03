if (state >= 2)
{
    if other.ibeam
    {
        state = 5
        statetime = 0
        PlaySoundMono(sndFreezeHit)
        with (other.id)
        {
            event_user(0)
            instance_destroy()
        }
    }
    else
    {
        with (other.id)
        {
            event_user(1)
            instance_destroy()
        }
    }
}
