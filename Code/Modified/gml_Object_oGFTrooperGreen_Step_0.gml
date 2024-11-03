if (active == 1 && firing == 0)
{
    if (lframe < 9)
        lframe += 0.04
    else
    {
        firing = 1
        fframe = 2.9
        instance_create((x - 19), (y - 20), oGFTBullet2)
    }
}
if (fframe > 0)
    fframe -= 0.1
