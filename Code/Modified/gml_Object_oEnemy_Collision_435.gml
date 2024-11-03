if canbehit
{
    if (stun == 0 && hitbomb)
        event_user(0)
    if (myhealth <= 0 && frozen == 0)
        state = 100
    if (myhealth <= 0 && frozen)
    {
        enemy_death_frozen()
        global.kills += 1
    }
}
