viscidMovementOk = 1
with (oMovingSolid)
{
    xVel += xAcc
    yVel += yAcc
    if approximatelyZero(xVel)
        xVel = 0
    if approximatelyZero(yVel)
        yVel = 0
    if approximatelyZero(xAcc)
        xAcc = 0
    if approximatelyZero(yAcc)
        yAcc = 0
    mstXPrev = x
    mstYPrev = y
    time = 0
    if (time > 100000000)
        time = 0
    xVelFrac = frac(abs(xVel))
    yVelFrac = frac(abs(yVel))
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
    xVelInteger += floor(abs(xVel))
    yVelInteger += floor(abs(yVel))
    if (xVel < 0)
        xVelInteger *= -1
    if (yVel < 0)
        yVelInteger *= -1
    xVelInteger = round(xVelInteger)
    yVelInteger = round(yVelInteger)
    with (oCharacter)
        calculateCollisionBounds()
    if isCollisionRectangle((((x - abs(xVelInteger)) - sprite_xoffset) - 2), (((y - abs(yVelInteger)) - sprite_yoffset) - 2), ((((x + sprite_width) + abs(xVelInteger)) - sprite_xoffset) + 2), ((((y + sprite_height) + abs(yVelInteger)) - sprite_yoffset) + 2), oCharacter.lb, oCharacter.tb, oCharacter.rb, oCharacter.bb)
    {
        if (xVelInteger > 0)
        {
            while (x < (mstXPrev + xVelInteger))
            {
                if (viscidTop && isCollisionCharacterTop(1) && (oCharacter.viscidMovementOk == 1 || oCharacter.viscidMovementOk == 2))
                {
                    with (oCharacter)
                    {
                        if (isCollisionRight(1) == 0)
                        {
                            x += 1
                            viscidMovementOk = 2
                        }
                    }
                    x += 1
                    continue
                }
                else if isCollisionCharacterRight(1)
                {
                    with (oCharacter)
                        collision = isCollisionRight(1)
                    if oCharacter.collision
                        break
                    else
                    {
                        oCharacter.x += 1
                        x += 1
                        continue
                    }
                }
                else
                {
                    x += 1
                    continue
                }
            }
        }
        if (xVelInteger < 0)
        {
            while (x > (mstXPrev + xVelInteger))
            {
                if (viscidTop && isCollisionCharacterTop(1) && (oCharacter.viscidMovementOk == 1 || oCharacter.viscidMovementOk == 2))
                {
                    with (oCharacter)
                    {
                        if (isCollisionLeft(1) == 0)
                        {
                            x -= 1
                            viscidMovementOk = 2
                        }
                    }
                    x -= 1
                    continue
                }
                else if isCollisionCharacterLeft(1)
                {
                    with (oCharacter)
                        collision = isCollisionLeft(1)
                    if oCharacter.collision
                        break
                    else
                    {
                        oCharacter.x -= 1
                        x -= 1
                        continue
                    }
                }
                else
                {
                    x -= 1
                    continue
                }
            }
        }
        if (yVelInteger > 0)
        {
            while (y < (mstYPrev + yVelInteger))
            {
                if (viscidTop && isCollisionCharacterTop(2))
                {
                    y += 5
                    with (oCharacter)
                    {
                        if (isCollisionBottom(1) == 0)
                            oCharacter.y += 1
                    }
                    y -= 5
                    y += 1
                    continue
                }
                else if isCollisionCharacterBottom(1)
                {
                    with (oCharacter)
                        collision = isCollisionBottom(1)
                    if oCharacter.collision
                        break
                    else
                    {
                        oCharacter.y += 1
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
            while (y > (mstYPrev + yVelInteger))
            {
                if isCollisionCharacterTop(1)
                {
                    with (oCharacter)
                        collision = isCollisionTop(1)
                    if oCharacter.collision
                        break
                    else
                    {
                        oCharacter.y -= 1
                        if isCollisionCharacterBottom(1)
                        {
                            if (oCharacter.jumpTime < oCharacter.jumpTimeTotal)
                            {
                                oCharacter.yVel = -2
                                oCharacter.jumpTime = oCharacter.jumpTimeTotal
                            }
                        }
                        y -= 1
                        continue
                    }
                }
                else
                {
                    if isCollisionCharacterBottom(1)
                    {
                        if (oCharacter.jumpTime < oCharacter.jumpTimeTotal)
                        {
                            oCharacter.yVel = -2
                            oCharacter.jumpTime = oCharacter.jumpTimeTotal
                        }
                    }
                    y -= 1
                    continue
                }
            }
        }
        if (oCharacter.viscidMovementOk == 2)
            oCharacter.viscidMovementOk = 0
    }
    else
    {
        x += xVelInteger
        y += yVelInteger
    }
}
with (oMoveableSolid)
{
    yMPrev = y
    yVel += oCharacter.grav
    while (y < (yMPrev + yVel))
    {
        if (place_meeting(x, (y + 1), oSolid) || isCollisionCharacterBottom(1))
        {
            yVel = 0
            break
        }
        else
        {
            y += 1
            continue
        }
    }
}
if (state == CLIMBING)
    ladderTimer = 10
else if (ladderTimer > 0)
    ladderTimer -= 1
