if (frozen == 0)
{
    with (other.id)
        event_user(1)
}
else
{
    event_user(0)
    with (other.id)
        event_user(0)
}
