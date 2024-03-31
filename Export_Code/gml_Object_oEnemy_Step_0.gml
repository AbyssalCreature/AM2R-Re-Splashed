if (frozen == 0 && stun == 0)
    statetime += 1
if (frozen > 0)
{
    frozen -= 1
    image_speed = 0
    if (instance_exists(platform) == 0)
        platform = instance_create((x - 8), (y + platyoffset), oPlatform1)
}
if (frozen == 0)
{
    if instance_exists(platform)
    {
        with (platform)
            instance_destroy()
    }
}
if (y > global.waterlevel && global.waterlevel != 0 && global.waterlevel != 1 && global.floodtraptimer <= 0)
{
    if (inwater == 0)
    {
        instance_create(x, global.waterlevel, oSplash)
        inwater = 1
        sfx_play(sndWaterExit)
    }
}
else if (inwater == 1 && global.waterlevel != 0 && global.floodtraptimer <= 0)
{
    instance_create(x, global.waterlevel, oSplash)
    inwater = 0
    sfx_play(sndWaterExit)
}
if (fxtimer < 5)
    fxtimer += 1
else
    fxtimer = 0
if (stun > 0)
    stun -= 1
if (flashing > 0)
    flashing -= 1
