var pushdir;
if (other.x < x)
    pushdir = -1
else
    pushdir = 1
if (other.invincible == 0 && other.state != 40)
{
    oMOmega.damagedealt += oMOmega.damage
    damage_player(oMOmega.damage, oMOmega.hpush, oMOmega.vpush, 0, 0)
}
