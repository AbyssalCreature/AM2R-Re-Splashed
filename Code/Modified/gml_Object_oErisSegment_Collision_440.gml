if (inrange && (!oErisHead.boosting) && (!flashing) && (!tail))
{
    with (other.id)
        event_user(0)
}
else if (!tail)
{
    with (other.id)
        event_user(1)
}
