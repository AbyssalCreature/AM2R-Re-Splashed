if (!instance_exists(oTankShield))
{
    if (other.smissile == 0)
        myhealth -= 10
    else if (other.smissile == 1)
        myhealth -= 20
    event_user(0)
    with (other.id)
        event_user(0)
}
