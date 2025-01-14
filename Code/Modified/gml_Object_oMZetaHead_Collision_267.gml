var pushdir, damageToDeal;
if (other.x < x)
    pushdir = -1
else
    pushdir = 1
if (other.invincible == 0)
{
    damageToDeal = oMZeta.damage
    if global.sax
        damageToDeal = (damageToDeal * 2)
    oMZeta.damagedealt += damageToDeal
    if (oMZeta.blur == 1)
    {
        with (oMZeta)
        {
            if (statetime < 17)
                statetime = 17
        }
        damage_player_push(damageToDeal, pushdir, 90, 0, 3.5)
    }
    else
        damage_player(damageToDeal, oMZeta.hpush, oMZeta.vpush, 0, 0)
}
