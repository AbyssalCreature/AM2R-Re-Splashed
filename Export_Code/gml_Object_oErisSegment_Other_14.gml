if (state != 100)
{
    if instance_exists(oErisHead)
    {
        with (oErisHead)
        {
            hp -= 4
            stun = 3
            event_user(2)
        }
    }
    event_user(5)
    shaking = 8
}
