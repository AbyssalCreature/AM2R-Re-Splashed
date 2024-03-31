if (state == 0)
{
    image_index = 0
    image_speed = 0
    if (statetime >= fire_delay)
    {
        state = 1
        statetime = 0
        sid = sfx_loop(sndMGammaElecLoop)
    }
}
if (state == 1)
{
    if (statetime == 0)
    {
        alarm[0] = 1
        image_speed = 0.5
    }
    if (statetime >= fire_time)
    {
        state = 0
        statetime = 0
        sfx_stop(sid)
    }
}
if (global.event[200] > 0)
    statetime += 1
