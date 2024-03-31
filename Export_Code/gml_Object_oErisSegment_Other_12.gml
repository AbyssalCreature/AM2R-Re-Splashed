if (state != 100)
{
    if instance_exists(oErisHead)
    {
        with (oErisHead)
        {
            hp -= 1
            stun = 1
            event_user(2)
        }
    }
    event_user(5)
    shaking = 8
}
