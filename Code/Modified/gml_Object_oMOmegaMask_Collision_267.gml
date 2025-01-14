var pushdir, damageToDeal;
if (other.x < x)
    pushdir = -1
else
    pushdir = 1
if (other.state != 52 && other.state != 39 && other.state != 40)
{
    if (other.invincible == 0)
        oMOmega.damagedealt += oMOmega.damage
    damageToDeal = oMOmega.damage
    if global.sax
        damageToDeal = (damageToDeal * 2)
    damage_player_push(damageToDeal, pushdir, 90, 0, 4)
}
