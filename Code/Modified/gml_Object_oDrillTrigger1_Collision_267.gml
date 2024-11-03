if (active && other.state == 23 && other.xVel == 0)
{
    with (other.id)
    {
        state = 60
        statetime = 0
    }
    alarm[1] = 30
}
if (other.state == 60)
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
