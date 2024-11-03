if (dark == 0 && flashing == 0 && state != 100)
{
    hp -= (10 * (1 + (other.smissile * 2)))
    flashing = 30
    with (other.id)
        event_user(0)
    event_user(1)
}
