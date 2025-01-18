if canbehit
{
    if hitmissile
    {
        event_user(0)
        with (other.id)
            event_user(0)
    }
    else
    {
        with (other.id)
            event_user(1)
    }
    if (myhealth <= 0 && frozen)
    {
        enemy_death_frozen()
        global.kills += 1
    }
}
