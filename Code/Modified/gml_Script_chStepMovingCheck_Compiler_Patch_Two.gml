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
