if (state == 0 && falling)
{
    if (global.waterlevel != 0)
    {
        if ((y - 8) > (global.waterlevel + global.wateroffset))
        {
            yVel -= 0.05
            if (yVel < -0.5)
                yVel = -0.5
            xVel *= 0.9
        }
        else
            yVel += 0.1
    }
    else if (isCollisionBottom(2) == 0)
        yVel += 0.1
    if (isCollisionBottom(2) > 0)
    {
        if (yVel > 1)
            event_user(0)
        if (yVel > 0)
            yVel *= -0.4
        if (abs(yVel) < 0.3)
            yVel = 0
        if (collision_line(round(lb), round((bb + 4)), round((rb - 1)), round((bb + 4)), oSlope1, true, true) > 0)
        {
            xVel -= 0.5
            yVel *= 0.5
        }
        if (collision_line(round(lb), round((bb + 4)), round((rb - 1)), round((bb + 4)), oSlope2, true, true) > 0)
        {
            xVel += 0.5
            yVel *= 0.5
        }
        if (collision_line(round(lb), round((bb + 4)), round((rb - 1)), round((bb + 4)), oSlope1B, true, true) > 0)
        {
            xVel -= 0.2
            yVel *= 0.5
        }
        if (collision_line(round(lb), round((bb + 4)), round((rb - 1)), round((bb + 4)), oSlope2B, true, true) > 0)
        {
            xVel += 0.2
            yVel *= 0.5
        }
        xVel *= 0.9
    }
    if (isCollisionTop(1) > 0 && yVel < 0)
    {
        yVel *= -1
        xVel *= 0.9
    }
    if ((isCollisionRight(1) > 0 && xVel > 0) || (isCollisionLeft(1) > 0 && xVel < 0))
        xVel *= -0.8
    xVel = min(xVel, 6)
    xVel = max(xVel, -6)
    yVel = min(yVel, 6)
    yVel = max(yVel, -6)
    moveTo(xVel, yVel)
    image_angle += (xVel * -2)
}
if (statetime >= 150)
    event_user(0)
statetime += 1
