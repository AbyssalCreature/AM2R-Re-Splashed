if (x > oMOmega.x)
    pushdir = 1
else
    pushdir = -1
if (cooldown == 0 && image_index < 10)
{
    damage_player(damage, hpush, vpush, 0, 0)
    oCharacter.onfire = 90
    cooldown = 15
}
