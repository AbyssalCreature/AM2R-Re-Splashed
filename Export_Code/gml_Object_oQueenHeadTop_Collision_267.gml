if canhit
{
    if (other.state != 52 && other.state != 39 && other.state != 40)
    {
        if (oQueenHead.push == 0)
            damage_player(oQueenHead.damage, oQueenHead.hpush, oQueenHead.vpush, 0, 0)
        else
            damage_player_push(oQueenHead.damage, 1, 90, 0, 4)
    }
}
