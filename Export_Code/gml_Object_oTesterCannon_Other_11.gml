if (damaged == 0)
{
    shaking = 8
    flashing = 5
    repeat (2)
        instance_create(x, y, oDebris)
    if (myhealth <= 0)
    {
        damaged = 1
        if instance_exists(pproj)
        {
            with (pproj)
                instance_destroy()
        }
        make_explosion1big(x, y)
        repeat (5)
            spawn_rnd_pickup_at((x + random_range(-10, 10)), (y + random_range(-10, 10)), 100)
        repeat (8)
            instance_create(x, y, oDebris)
        sfx_play(sndRobotExpl)
    }
    if (myhealth > 75)
        image_index = 0
    if (myhealth <= 75)
        image_index = 1
    if (myhealth <= 50)
        image_index = 2
    if (myhealth <= 25)
        image_index = 3
    sfx_stop(sndRobotHit2)
    sfx_play(sndRobotHit2)
}
