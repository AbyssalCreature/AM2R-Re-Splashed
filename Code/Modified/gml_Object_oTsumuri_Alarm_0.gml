if (sbstate == 0)
{
    yVel += 0.1
    if (stun == 0)
        moveTo(xVel, yVel)
    alarm[0] = 1
}
else
{
    angleprevious = 0
    direction = myangle
    image_angle = direction
    xVel = 0
    yVel = 0
    x = round(x)
    y = round(y)
    falling = 0
}
