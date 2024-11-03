image_angle += rotspeed
if (global.waterlevel != 0)
{
    if (global.watertype == 0 && instance_exists(oWater))
    {
        if (y > (global.waterlevel + oWater.yoffset))
        {
            if (!inwater)
            {
                inwater = 1
                speed *= 0.5
                instance_create(x, y, oSmallSplash)
            }
            inwater = 1
        }
        if (y < (global.waterlevel + oWater.yoffset))
        {
            if inwater
            {
                inwater = 0
                instance_create(x, y, oSmallSplash)
            }
            inwater = 0
        }
    }
}
if (!inwater)
    gravity = 0.2
else
    gravity = 0.1
