damagemissiles = global.mod_monstersDmissiles
damagesupermissiles = global.mod_monstersDsuper
if (state >= 2)
{
    if ((!other.smissile) && global.icemissiles)
    {
        state = 5
        statetime = 0
        PlaySoundMono(sndFreezeHit)
        with (other.id)
            event_user(0)
    }
    if (state != 5)
    {
        if (!global.icemissiles)
        {
            with (other.id)
                event_user(1)
        }
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
