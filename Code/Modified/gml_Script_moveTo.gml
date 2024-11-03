if (room != rm_transition)
{
    mtXPrev = x
    mtYPrev = y
    time += 1
    if (time > 100000000)
        time = 0
    xVelFrac = frac(abs(argument0))
    yVelFrac = frac(abs(argument1))
    xVelInteger = 0
    yVelInteger = 0
    if (xVelFrac != 0)
    {
        if (round((1 / xVelFrac)) != 0)
            xVelInteger = (time % round((1 / xVelFrac))) == 0
    }
    if (yVelFrac != 0)
    {
        if (round((1 / yVelFrac)) != 0)
            yVelInteger = (time % round((1 / yVelFrac))) == 0
    }
    xVelInteger += floor(abs(argument0))
    yVelInteger += floor(abs(argument1))
    if (argument0 < 0)
        xVelInteger *= -1
    if (argument1 < 0)
        yVelInteger *= -1
    xVelInteger = round(xVelInteger)
    yVelInteger = round(yVelInteger)
    if (xVelInteger > 0)
    {
        while (x < (mtXPrev + xVelInteger))
        {
            if isCollisionRight(1)
                break
            else
            {
                x += 1
                continue
            }
        }
    }
    if (xVelInteger < 0)
    {
        while (x > (mtXPrev + xVelInteger))
        {
            if isCollisionLeft(1)
                break
            else
            {
                x -= 1
                continue
            }
        }
    }
    if (yVelInteger > 0)
    {
        while (y < (mtYPrev + yVelInteger))
        {
            if isCollisionBottom(1)
                break
            else if (object_index == oCharacter)
            {
                if isCollisionPlatformBottom(1)
                    break
                else
                {
                    y += 1
                    continue
                }
            }
            else
            {
                y += 1
                continue
            }
        }
    }
    if (yVelInteger < 0)
    {
        while (y > (mtYPrev + yVelInteger))
        {
            if isCollisionTop(1)
                break
            else
            {
                y -= 1
                continue
            }
        }
    }
}
