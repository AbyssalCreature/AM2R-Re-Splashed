if canbehit
{
    if (hitbeam && other.dohit)
    {
        event_user(0)
        with (other.id)
            event_user(0)
        if (myhealth <= 0 && frozen)
        {
            enemy_death_frozen()
            global.kills += 1
        }
    }
    if (!hitbeam)
    {
        with (other.id)
            event_user(1)
    }
    if (other.pbeam == 0)
    {
        with (other.id)
            instance_destroy()
    }
}
