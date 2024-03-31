if (state == 0)
{
    if (statetime == 300)
    {
        state = 1
        statetime = 0
        with (oA3AssemblyControl)
            alarm[4] = 1
    }
}
if (state == 1)
{
    if (image_alpha < 1)
        image_alpha += 0.02
    if (statetime == 120)
    {
        state = 2
        statetime = 0
    }
}
if (state == 2)
{
    if (statetime == 0)
    {
        instance_create(x, y, oA3Beam)
        with (oA3AssemblyControl)
            alarm[5] = 1
    }
    if (statetime == 60)
    {
        state = 3
        statetime = 0
        sfx_stop(sndALLaserLoop)
    }
}
if (state == 3)
{
    if (image_alpha > 0)
        image_alpha -= 0.1
    else
    {
        state = 0
        statetime = 0
    }
}
statetime += 1
