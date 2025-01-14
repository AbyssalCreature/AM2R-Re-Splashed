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
        chStepMovingCheck_Compiler_Patch_One()
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
    chStepMovingCheck_Compiler_Patch_Two()
}
if (state == CLIMBING)
    ladderTimer = 10
else if (ladderTimer > 0)
    ladderTimer -= 1
