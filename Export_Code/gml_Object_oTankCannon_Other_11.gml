var boom;
if (damaged == 0)
{
    damaged = 1
    with (oTankArm)
        event_user(1)
    image_speed = 0
    alarm[0] = 15
    sfx_play(sndRobotExpl)
    repeat (3)
    {
        boom = make_explosion1((x + irandom_range(10, -10)), (y + irandom_range(10, -10)))
        boom.depth = (depth - 1)
    }
}
