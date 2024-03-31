if (dark == 0 && flashing == 0 && state != 100)
{
    hp -= 5
    flashing = 30
    with (other.id)
        event_user(0)
    if (other.pbeam == 0)
    {
        with (other.id)
            instance_destroy()
    }
    event_user(1)
}
