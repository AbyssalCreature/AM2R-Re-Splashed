if (myhealth > 0)
{
    if ((state == 4 || state == 9) && other.invincible == 0 && other.walljumping == 0)
    {
        damage_player_push(damage, facing, 90, 0, 2.2)
        if (state == 4)
        {
            facing *= -1
            vspeed = -2
            gravity = 0.2
        }
    }
    else if (other.invincible == 0)
        damage_player(damage, 5, -3, 0, 0)
}
