if (myhealth > 0 && state > 0 && canbehit)
{
    if other.chargebeam
    {
        myhealth -= (3 * (1 - (other.sbeam * 0.4)))
        event_user(0)
    }
    else
    {
        myhealth -= (1 * (1 - (other.sbeam * 0.4)))
        event_user(0)
    }
    with (other.id)
    {
        event_user(0)
        instance_destroy()
    }
}
