if ((state == BALL || state == AIRBALL || state == SPIDERBALL) && other.image_index == 1 && monster_drain == 0)
{
    if (isCollisionTop(6) == 0)
        yVel = -5
    else if (isCollisionTop(5) == 0)
        yVel = -4
    else if (isCollisionTop(4) == 0)
        yVel = -3
    else if (isCollisionTop(3) == 0)
        yVel = -2
    else if (isCollisionTop(2) == 0)
        yVel = -1
    state = AIRBALL
    sball = 0
    statetime = 0
    if (x < (other.x - 2))
    {
        facing = LEFT
        fixedx = 12
    }
    if (x > (other.x + 2))
    {
        facing = RIGHT
        fixedx = 12
    }
    fixedy = 20
}
