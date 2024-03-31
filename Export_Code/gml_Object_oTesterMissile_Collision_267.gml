if (other.state == 15 && other.vjump == 0 && global.screwattack == 1)
{
    event_user(1)
    spawn_rnd_pickup(100)
}
else
    event_user(0)
