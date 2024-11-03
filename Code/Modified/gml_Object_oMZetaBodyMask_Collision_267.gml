var pushdir;
if (other.x < x)
    pushdir = -1
else
    pushdir = 1
if (other.invincible == 0)
    oMZeta.damagedealt += oMZeta.damage
damage_player_push(oMZeta.damage, pushdir, 90, 0, 3.5)
