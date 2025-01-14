var combo, damageToDeal;
combo = global.difficulty >= 2
if (fadeout == 0 && (combo == 1 || other.invincible == 0))
{
    damageToDeal = damage
    if global.sax
        damageToDeal = (damageToDeal * 2)
    damage_player(damageToDeal, hpush, vpush, 0, combo)
    fadeout = 1
    speed = 0
}
