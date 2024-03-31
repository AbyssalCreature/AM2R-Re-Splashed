action_inherited()
enemy_active_check(70)
enemy_target_check(90, 1)
if (active == 1 && stun == 0 && frozen == 0 && state != 100)
{
    if (state == 1)
    {
        xVel *= 0.95
        yVel *= 0.95
        if inwater
        {
            xVel *= 0.9
            yVel *= 0.9
        }
    }
    if (stun == 0)
        moveTo(xVel, yVel)
}
if (turning == 2)
    facing *= -1
if (inwater && global.watertype == 1)
{
    flashing = 1
    myhealth -= 1
    event_user(1)
    if (myhealth <= 0)
        state = 100
}
if (state == 100)
{
    canbehit = 0
    alarm[0] = 0
    yVel += 0.1
    moveTo(xVel, yVel)
    if (xVel <= 0)
        image_angle += 0.6
    if (xVel > 0)
        image_angle -= 0.6
    if (isCollisionLeft(1) || isCollisionRight(1))
        xVel = 0
    if (isCollisionBottom(1) || statetime > 240 || y > (view_yview[0] + 240))
    {
        enemy_death2()
        repeat (20)
            instance_create(x, y, oDebris)
    }
}
if (turning > 0)
    turning -= 1
