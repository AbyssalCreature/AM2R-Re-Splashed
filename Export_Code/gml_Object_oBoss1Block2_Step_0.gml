if (facing == 1)
    spike.x = ((x + 18) - spikeoffset)
if (facing == -1)
    spike.x = ((x - 34) + spikeoffset)
if moving
    xVel = (facing * 0.1)
else
    xVel = 0
if (moving > 0)
    moving -= 1
if (oBoss1Head.myhealth <= 0)
{
    xVel = 0
    if (spikeoffset < 26)
        spikeoffset += 1
}
