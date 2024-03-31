if (other.state == other.JUMPING && other.vjump == 0 && frozen == 0)
{
    other.chargebeam = 0
    other.nofire = 20
    damage_player(damage, hpush, vpush, 0, 0)
}
else if (frozen == 0)
    event_inherited()
