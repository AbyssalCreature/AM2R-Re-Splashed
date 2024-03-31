if (myhealth[2] > 0)
{
    if (sparkcount > 0)
    {
        instance_create(x, y, oElectricSparkCoreXShort)
        sparkcount--
        alarm[0] = (30 + random(30))
        sfx_play(sndCoreXPhaseShort)
    }
    else
    {
        instance_create(x, y, oElectricSparkCoreX)
        sparkcount = irandom_range(3, 5)
        alarm[0] = (60 + random(15))
    }
}
