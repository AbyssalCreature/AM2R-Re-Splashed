var damageToDeal;
if (x > oMOmega.x)
    pushdir = 1
else
    pushdir = -1
if (cooldown == 0 && image_index < 10)
{
    damageToDeal = damage
    if global.sax
        damageToDeal = (damageToDeal * 2)
    damage_player(damageToDeal, hpush, vpush, 0, 0)
    oCharacter.onfire = 90
    cooldown = 15
}
