if (!instance_exists(oBoss1Head))
    return 0;
if (y > 150 && falling)
{
    gravity = 0
    speed = 0
    y = 160
    falling = 0
    quake = instance_create(0, 0, oQuake)
    quake.delay = 0
    quake.duration = 10
    quake.intensity = 2
    sfx_play(sndBoss1Stomp)
    mus_current_stop()
}
if (enablespikes && spikeoffset > 0)
    spikeoffset -= 1
if (facing == 1)
{
    if (x < (oBoss1Head.edge_l - 48))
        hspeed = 0.25
    else
        hspeed = 0
}
if (facing == -1)
{
    if (x > (oBoss1Head.edge_r + 48))
        hspeed = -0.25
    else
        hspeed = 0
}
if (facing == 1)
    spike.x = ((x + 18) - spikeoffset)
if (facing == -1)
    spike.x = ((x - 34) + spikeoffset)
