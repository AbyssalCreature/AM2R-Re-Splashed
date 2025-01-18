if canbehit
{
    if (hitbeam && other.dohit)
    {
        event_user(0)
        with (other.id)
            event_user(0)
    }
    if (!hitbeam)
    {
        with (other.id)
            event_user(1)
    }
    if (other.pbeam == 0)
    {
        with (other.id)
            instance_destroy()
    }
}
