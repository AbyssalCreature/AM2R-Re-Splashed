if (myhealth > 0 && state > 0)
{
    if (!canbehit)
    {
        with (other.id)
            event_user(1)
    }
    else
    {
        with (other.id)
            event_user(0)
        if (state != 5)
            myhealth -= (5 * (1 + (other.smissile * 2)))
        if (state != 5 && state != 4)
            speed *= 0.25
        event_user(0)
    }
}
