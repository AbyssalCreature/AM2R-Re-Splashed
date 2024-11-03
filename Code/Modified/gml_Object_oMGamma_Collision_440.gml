if canbehit
{
    if (state != 7)
    {
        event_user(0)
        with (other.id)
            event_user(0)
    }
    else
    {
        with (other.id)
            event_user(1)
    }
}
