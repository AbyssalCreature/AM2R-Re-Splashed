if (damaged == 0)
{
    damaged = 1
    bg_frame = 1
    repeat (10)
        instance_create(((x + tr1x) + 30), ((y + tr1y) + 12), oDebris)
    repeat (10)
        instance_create(((x + tr1x) + 30), ((y + tr1y) + 12), oMetalDebrisBig)
    make_explosion1big(((x + tr1x) + 30), ((y + tr1y) + 12))
    repeat (10)
        instance_create(((x + tr2x) + 30), ((y + tr2y) + 12), oDebris)
    repeat (10)
        instance_create(((x + tr2x) + 30), ((y + tr2y) + 12), oMetalDebrisBig)
    make_explosion1big(((x + tr2x) + 30), ((y + tr2y) + 12))
    sfx_play(sndRobotExpl)
}
