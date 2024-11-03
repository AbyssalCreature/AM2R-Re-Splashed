if (canhit == 1)
{
    if (state == 7 && phase < 2)
        damage_player_push((damage / 2), 1, 90, 0, 4)
    else
        damage_player_push(damage, 1, 90, 0, 4)
}
