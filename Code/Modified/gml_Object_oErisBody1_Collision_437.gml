if inrange
{
    if (state == 1)
        event_user(1)
    if (state == 2 && (!flashing))
        event_user(2)
}
