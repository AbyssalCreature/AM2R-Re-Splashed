if (canhit == 1)
{
    if (other.state != 52 && other.state != 39 && other.state != 40)
    {
        if (push == 0)
            damage_player(damage, hpush, vpush, 0, 0)
        else
            damage_player_push(damage, 1, 90, 0, 4)
    }
}
