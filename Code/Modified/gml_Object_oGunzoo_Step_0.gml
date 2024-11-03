event_inherited()
enemy_active_check(20)
enemy_target_check(90, 1)
switch phase
{
    case 0:
        vaccel = 0.3
        break
    case 1:
        vaccel = 0.5
        break
    case 2:
        vaccel = 0.7
        break
}

if (state == 1)
{
    if (facing == 1)
        targetx = (oCharacter.x - 120)
    else
        targetx = (oCharacter.x + 120)
    targety = (oCharacter.y - (sprite_get_height(oCharacter.mask_index) / 2))
    if (aoffset > 0)
        aoffset -= 0.2
    if (x > targetx)
        xVel -= haccel
    if (x < targetx)
        xVel += haccel
    if (y > targety)
        yVel -= vaccel
    if (y < targety)
        yVel += vaccel
    if (xVel > 2)
        xVel = 2
    if (xVel < -2)
        xVel = -2
    if (yVel > 4)
        yVel = 4
    if (yVel < -4)
        yVel = -4
    if (oCharacter.x > x && facing == -1 && turning == 0)
        turning = 4
    if (oCharacter.x <= x && facing == 1 && turning == 0)
        turning = 4
    if (statetime > 120)
    {
        if collision_line(x, (y - 6), (x + (160 * facing)), (y - 6), oCharacter, false, true)
        {
            state = 2
            statetime = 0
        }
    }
}
if (state == 2)
{
    xVel *= 0.8
    yVel *= 0.8
    if (aoffset < 2)
        aoffset += 0.2
    if (statetime == 0)
    {
    }
    if (statetime == 60)
        alarm[0] = 1
    if (statetime == 90)
    {
        state = 1
        statetime = -1
    }
}
if (stun == 0)
    moveTo(xVel, yVel)
if (state == 100)
{
    canbehit = 0
    alarm[1] = 0
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
if (turning == 2)
    facing *= -1
if (turning > 0)
    turning -= 1
