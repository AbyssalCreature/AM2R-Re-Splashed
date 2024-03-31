if (active == 0)
{
    active = 1
    alarm[0] = 760
    image_speed = 0.3
    sound_play(sndGrab)
    global.event[1005] = 1
    with (oEventSolid2)
        instance_destroy()
}
if (instance_exists(oLavaRise) == 0)
{
    mover = instance_create(x, y, oLavaRise)
    mover.time = 760
    mover.rate = 1
    mover.ydir = 1
}
