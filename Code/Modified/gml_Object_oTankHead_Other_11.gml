if (damaged == 0)
{
    damaged = 1
    sprite_index = sTankHeadDest
    repeat (10)
        instance_create((x + 10), y, oDebris)
    make_explosion1big((x + 10), y)
    sfx_play(sndRobotExpl)
}
