if (state == 0)
{
    if (isCollisionBottom(5) == 0)
        yVel += 0.1
    if (isCollisionBottom(5) > 0)
    {
        if (yVel > 0)
            yVel *= -0.7
        if (abs(yVel) < 0.3)
            yVel = 0
        if (collision_line(round(lb), round((bb + 4)), round((rb - 1)), round((bb + 4)), oSlope1, true, true) > 0 || collision_line(round(lb), round((bb + 4)), round((rb - 1)), round((bb + 4)), oSlopeFL1, true, true) > 0)
        {
            xVel -= 0.5
            yVel *= 0.5
        }
        if (collision_line(round(lb), round((bb + 4)), round((rb - 1)), round((bb + 4)), oSlope2, true, true) > 0 || collision_line(round(lb), round((bb + 4)), round((rb - 1)), round((bb + 4)), oSlopeFL2, true, true) > 0)
        {
            xVel += 0.5
            yVel *= 0.5
        }
        if (collision_line(round(lb), round((bb + 4)), round((rb - 1)), round((bb + 4)), oSlope1B, true, true) > 0 || collision_line(round(lb), round((bb + 4)), round((rb - 1)), round((bb + 4)), oSlopeFL1B, true, true) > 0)
        {
            xVel -= 0.2
            yVel *= 0.5
        }
        if (collision_line(round(lb), round((bb + 4)), round((rb - 1)), round((bb + 4)), oSlope2B, true, true) > 0 || collision_line(round(lb), round((bb + 4)), round((rb - 1)), round((bb + 4)), oSlopeFL2B, true, true) > 0)
        {
            xVel += 0.2
            yVel *= 0.5
        }
        xVel *= 0.9
    }
    if (isCollisionTop(5) > 0 && yVel < 0)
    {
        yVel *= -1
        xVel *= 0.9
    }
    if ((isCollisionRight(5) > 0 && xVel > 0) || (isCollisionLeft(5) > 0 && xVel < 0))
        xVel *= -0.8
    xVel = min(xVel, 6)
    xVel = max(xVel, -6)
    yVel = min(yVel, 6)
    yVel = max(yVel, -6)
    moveTo(xVel, yVel)
    image_angle += (xVel * -2)
}
if (state == 10)
{
    x = round(x)
    y = round(y)
    if (x > targetx)
        x -= 1
    if (x < targetx)
        x += 1
    if (y > targety)
        y -= 1
    if (y < targety)
        y += 1
}
if (state == 100)
{
    shaking = 1
    if (statetime == 30)
    {
        instance_create(x, y, oBatteryExpl)
        expl = instance_create(x, y, oBatteryExpl)
        expl.image_angle = 90
        expl = instance_create(x, y, oBatteryExpl)
        expl.image_angle = 180
        expl = instance_create(x, y, oBatteryExpl)
        expl.image_angle = 270
        sfx_play(sndEMPExpl)
        instance_destroy()
    }
    if (fxtimer < 5)
        fxtimer += 1
    else
        fxtimer = 0
    statetime += 1
}
if (x < (-8 - (oControl.widescreen_space / 2)) || x > ((room_width + 8) + (oControl.widescreen_space / 2)) || y < -8 || y > (room_height + 8))
    instance_destroy()
