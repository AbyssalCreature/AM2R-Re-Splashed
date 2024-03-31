if (global.waterlevel != 0)
{
    if (y >= (global.waterlevel - 8))
    {
        y = global.waterlevel
        instance_create(x, global.waterlevel, oSmallSplash)
        event_user(0)
    }
    alarm[2] = 2
}
