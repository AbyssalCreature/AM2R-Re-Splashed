if (state != 100)
{
    dmg = 50
    flashtime = 20
    eyes_close = 20
    shaking = 24
    if (state == 5 && statetime > 6)
    {
        state = 0
        statetime = -1
        speed = 0
        ujaw_angle = 0
    }
    if (ujaw_angle == 0)
        stunned = 30
    else if (state != 5)
        image_angle += 10
    event_user(0)
    sfx_stop(sndQueenHit2)
    sfx_play(sndQueenHit2)
}
