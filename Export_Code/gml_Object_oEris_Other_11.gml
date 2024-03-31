if boosting
{
    if (phase == 0)
    {
        speedmult = (1 * (1 + sign(boosting)))
        stepdelay = (4 / (1 + sign(boosting)))
        speed = (3 * speedmult)
    }
    else if (phase == 1)
    {
        speedmult = (1.1 * (1 + sign(boosting)))
        stepdelay = (4 / (1 + sign(boosting)))
        speed = (3 * speedmult)
    }
    else if (phase == 2)
    {
        speedmult = (1.2 * (1 + sign(boosting)))
        stepdelay = (3 / (1 + sign(boosting)))
        speed = (3 * speedmult)
    }
    else if (phase == 3)
    {
        speedmult = (1.3 * (1 + sign(boosting)))
        stepdelay = (3 / (1 + sign(boosting)))
        speed = (3 * speedmult)
    }
}
else if (phase == 0)
{
    speedmult = 1
    boostspdmult = 3
    stepdelay = 4
    boostspddelay = (4/3)
}
else if (phase == 1)
{
    speedmult = 1.4
    boostspdmult = 4.199999999999999
    stepdelay = 3
    boostspddelay = 3
}
else if (phase == 2)
{
    speedmult = 1.8
    boostspdmult = 5.4
    stepdelay = 2
    boostspddelay = (2/3)
}
else if (phase == 3)
{
    speedmult = 2.2
    boostspdmult = 6.6000000000000005
    stepdelay = 1
    boostspddelay = (1/3)
}
if (state == 100)
    speed = 0
for (l = 0; l <= bodylength; l += 1)
{
    prev_x[round(l)] = ds_queue_create()
    prev_y[round(l)] = ds_queue_create()
}
