if (state == 2 && isCollisionBottom(1))
{
    if ((oCharacter.y - 20) > y)
        yVel = -3
    if ((oCharacter.y - 20) < y)
        yVel = -5
    if (oCharacter.x > x)
        xVel = 2
    if (oCharacter.x < x)
        xVel = -2
    clawangle = 36
    sfx_play(sndAutoadJump)
}
alarm[0] = 60
