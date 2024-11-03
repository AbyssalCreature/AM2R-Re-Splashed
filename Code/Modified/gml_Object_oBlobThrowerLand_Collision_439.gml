if ((!other.ibeam) && (!other.pbeam))
{
    with (other.id)
    {
        event_user(1)
        instance_destroy()
    }
}
else
    event_inherited()
