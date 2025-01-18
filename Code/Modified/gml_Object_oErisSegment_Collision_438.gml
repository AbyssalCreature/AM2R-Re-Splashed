if (inrange && (!oErisHead.boosting) && (!tail))
{
    if (state == 1)
        event_user(1)
    else if (state == 2 && (!flashing) && other.erisDmg == 1)
    {
        if other.smissile
            event_user(4)
        else
            event_user(3)
        with (other.id)
            erisDmg = 0
    }
}
