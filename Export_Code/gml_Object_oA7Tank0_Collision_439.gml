if active
{
    event_user(0)
    with (other.id)
        event_user(0)
    if (other.pbeam == 0)
    {
        with (other.id)
            instance_destroy()
    }
}
