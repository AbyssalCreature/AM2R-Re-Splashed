if (canbehit && myhealth > 0)
{
    myhealth -= 2
    event_user(0)
    with (other.id)
    {
        event_user(0)
        instance_destroy()
    }
}
