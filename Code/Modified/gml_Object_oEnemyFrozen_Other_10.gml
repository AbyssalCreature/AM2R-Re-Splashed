if (sprite_index == sQueenProjFrozen)
{
    spawn_rnd_pickup_at((x - 8), (y - 4), 100)
    spawn_rnd_pickup_at((x + 8), (y - 4), 100)
    spawn_rnd_pickup_at(x, (y - 8), 100)
    canbeX = 0
}
enemy_death_frozen()
