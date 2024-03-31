if other.active
{
    if (floor(boosting) > 1)
        boosting--
    if (hp >= 3)
    {
        hp -= 2
        stun = 10
        event_user(2)
    }
    sfx_play(sndErisRoar4)
    sfx_play(sndElectricExpl)
}
with (other.id)
{
    active = 0
    cooldown = cooldownmax
    time = 0
}
