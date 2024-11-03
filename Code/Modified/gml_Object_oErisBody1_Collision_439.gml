if (inrange && (!flashing) && (!oEris.boosting))
{
    if (state == 0 || state == 1)
    {
        if other.ibeam
        {
            if (!other.pbeam)
                hp -= 4
            else
                hp -= 2
            if other.chargebeam
                hp = 0
            with (other.id)
                event_user(0)
            event_user(0)
        }
        else
        {
            with (other.id)
                event_user(1)
        }
        if (!other.pbeam)
        {
            with (other.id)
                instance_destroy()
        }
    }
    if (state == 2)
    {
        with (other.id)
        {
            event_user(0)
            if (!pbeam)
                instance_destroy()
        }
        event_user(3)
    }
}
else
{
    with (other.id)
    {
        if pbeam
            event_user(1)
        else
        {
            event_user(0)
            instance_destroy()
        }
    }
}
