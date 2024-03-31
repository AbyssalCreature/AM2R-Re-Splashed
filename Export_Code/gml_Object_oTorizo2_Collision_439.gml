if (myhealth > 0 && state > 0 && canbehit)
{
    if other.chargebeam
    {
        if (state != 5)
            myhealth -= (4 * (1 - (other.sbeam * 0.4)))
        event_user(0)
    }
    else
    {
        if (state != 5)
            myhealth -= (1.5 * (1 - (other.sbeam * 0.4)))
        event_user(0)
    }
    with (other.id)
    {
        event_user(0)
        instance_destroy()
    }
}
