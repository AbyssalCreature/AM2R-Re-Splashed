damagemissiles = global.mod_monstersDmissiles
damagesupermissiles = global.mod_monstersDsuper
if (state >= 2)
{
    if (state != 5)
    {
        with (other.id)
            event_user(1)
    }
    else
    {
        with (other.id)
            event_user(0)
        if (other.smissile == 1)
            hp -= damagesupermissiles
        else
            hp -= damagemissiles
        event_user(0)
    }
}
