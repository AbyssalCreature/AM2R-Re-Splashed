var damageToDeal;
if (myhealth > 0)
{
    damageToDeal = damage
    if global.sax
        damageToDeal = (damageToDeal * 2)
    if (other.invincible == 0)
        damagedealt += damageToDeal
    damage_player(damageToDeal, hpush, vpush, 0, 0)
    if (chasing && hitandrun)
    {
        xVel = 0
        yVel = 0
        event_user(1)
    }
}
