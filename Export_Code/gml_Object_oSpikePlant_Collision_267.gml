if (other.state == 15 && other.vjump == 0 && (global.screwattack == 1 || other.chargebeam >= 1))
{
    if (other.chargebeam >= 1)
    {
        other.chargebeam = 0
        other.nofire = 20
    }
    event_user(0)
}
else
    damage_player(damage, hpush, vpush, 0, 0)
