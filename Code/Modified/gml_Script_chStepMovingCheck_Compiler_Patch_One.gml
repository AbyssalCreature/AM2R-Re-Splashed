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
