var pushdir, damageToDeal;
if (other.x < x)
    pushdir = -1
else
    pushdir = 1
if (other.invincible == 0 && other.state != 40)
{
    oMOmega.damagedealt += oMOmega.damage
    damageToDeal = oMOmega.damage
    if global.sax
        damageToDeal = (damageToDeal * 2)
    damage_player(damageToDeal, oMOmega.hpush, oMOmega.vpush, 0, 0)
}
