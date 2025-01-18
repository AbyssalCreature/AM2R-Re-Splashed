if (inrange && (!oErisHead.boosting) && (!tail))
{
    if (state == 1)
        event_user(1)
    else if (state == 2 && (!flashing))
        event_user(2)
}
