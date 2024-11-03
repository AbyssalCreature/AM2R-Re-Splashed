if (damaged == 0)
{
    shaking = 8
    flashing = 5
    if (myhealth > 60)
        sprite_index = sTankHead
    if (myhealth <= 60)
        sprite_index = sTankHead2
    if (myhealth <= 30)
        sprite_index = sTankHead3
    if (myhealth <= 0)
        event_user(1)
    sfx_stop(sndRobotHit2)
    sfx_play(sndRobotHit2)
}
