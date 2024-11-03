if (active && other.state == 23 && other.xVel == 0 && global.event[172] == 1 && (!instance_exists(oGreenCrystal)))
{
    with (other.id)
    {
        state = 60
        statetime = 0
    }
    alarm[1] = 30
}
if (active && other.state == 60)
{
    if (other.x > targetx)
    {
        with (other.id)
            x -= 1
    }
    if (other.x < targetx)
    {
        with (other.id)
            x += 1
    }
}
