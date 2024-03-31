if (state == 1)
{
    if (instance_number(oSpikePlant) == 0)
    {
        state = 2
        alarm[2] = 300
    }
    else
    {
        targetobj = instance_nearest(x, y, oSpikePlant)
        targetx = ((targetobj.x - 10) + random(20))
        targety = ((targetobj.y - 10) + random(20))
        if (x < targetx)
            hspeed += 0.05
        else
            hspeed -= 0.05
        if (y < targety)
            vspeed += 0.05
        else
            vspeed -= 0.05
        speed = min(1.5, speed)
    }
}
if (state == 2)
{
    if (x < oCharacter.x)
        hspeed += 0.2
    else
        hspeed -= 0.2
    if (y < ((oCharacter.y - 30) + random(20)))
        vspeed += 0.2
    else
        vspeed -= 0.2
    speed = min(3, speed)
}
if ((state == 1 || state == 2) && instance_exists(oChargeBeamSpark1))
{
    if (x < ((oChargeBeamSpark1.x - 30) + random(60)))
        hspeed += 0.3
    else
        hspeed -= 0.3
    if (y < ((oChargeBeamSpark1.y - 30) + random(60)))
        vspeed += 0.3
    else
        vspeed -= 0.3
    speed = min(3, speed)
}
if (state == 3)
    speed += 0.2
