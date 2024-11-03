if (myhealth > 0)
{
    if (other.invincible == 0)
        damagedealt += damage
    damage_player(damage, hpush, vpush, 0, 0)
    if (chasing && hitandrun)
    {
        xVel = 0
        yVel = 0
        event_user(1)
    }
}
