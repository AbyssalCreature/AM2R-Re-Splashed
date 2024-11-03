if (!instance_exists(oTankShield))
{
    if other.pbeam
        myhealth -= 1
    else
        myhealth -= 3
    event_user(0)
    with (other.id)
    {
        event_user(0)
        if (!pbeam)
            instance_destroy()
    }
}
