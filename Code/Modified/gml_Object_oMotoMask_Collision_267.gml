dodamage = 1
if canhit
{
    if (other.dash >= 29 || other.state == 30 || other.state == 31 || other.state == 29 || other.speedboost > 0 || (other.state == 15 && other.vjump == 0 && global.screwattack == 1))
        dodamage = 0
    if (dodamage == 1)
        damage_player(damage, hpush, vpush, 0, 0)
}
