if (damaged == 0)
{
    shaking = 8
    flashing = 5
    if (myhealth > 60)
    {
        with (oTankArm)
            sprite_index = sTankShoulder
    }
    if (myhealth <= 60)
    {
        with (oTankArm)
            sprite_index = sTankShoulder1
    }
    if (myhealth <= 30)
    {
        with (oTankArm)
            sprite_index = sTankShoulder2
    }
    if (myhealth <= 0)
        event_user(1)
    sfx_stop(sndRobotHit2)
    sfx_play(sndRobotHit2)
}
