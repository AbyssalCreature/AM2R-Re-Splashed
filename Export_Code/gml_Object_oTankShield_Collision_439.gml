if (damaged == 0 && flashing < 3)
{
    myhealth -= 1
    event_user(0)
    with (other.id)
    {
        event_user(0)
        if (!pbeam)
            instance_destroy()
    }
}
