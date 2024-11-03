if (damaged == 0 && canbehit)
{
    with (other.id)
    {
        event_user(0)
        if (!pbeam)
            instance_destroy()
    }
    myhealth -= 2
    event_user(1)
}
