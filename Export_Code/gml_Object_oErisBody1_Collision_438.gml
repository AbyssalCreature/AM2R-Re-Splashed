if inrange
{
    if (state == 1)
        event_user(1)
    if (state == 2 && (!flashing))
    {
        if other.smissile
            event_user(4)
        else
            event_user(3)
    }
}
