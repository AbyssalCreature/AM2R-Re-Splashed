if (state != 10 && other.active == 0)
{
    state = 10
    statetime = 0
    targetx = (other.x + 8)
    targety = (other.y + 8)
    alarm[0] = 1
    with (other.id)
    {
        active = 1
        alarm[0] = 90
    }
    sfx_play(sndEMPHit)
    sfx_play(sndBirdSwitchEnable)
}
