action_inherited()
enemy_active_check(20)
enemy_target_check(90, 1)
if (active == 1 && frozen == 0)
{
    if (state == 1)
    {
        image_index = 2
        xVel = 0
        yVel = 0
        if (target && canattack)
        {
            yVel = -5
            y -= 4
            state = 2
            image_index = 1
        }
    }
    if (state == 2)
    {
        if (image_index >= 1)
            image_index -= 0.5
        if isCollisionTop(2)
            yVel = 0
        if (oCharacter.x > x)
            facing = 1
        else
            facing = -1
        if (yVel >= 0)
        {
            yVel = 0
            state = 3
        }
    }
    if (state == 3)
    {
        if (image_index <= 6)
            image_index += 0.5
        if isCollisionBottom(1)
        {
            yVel = 0
            xVel = 0
            canattack = 0
            alarm[0] = 60
            state = 1
        }
        if (global.difficulty != 2 && noglide == 0)
        {
            xVel += (0.2 * facing)
            if (abs(xVel) > 3)
                facing = (-facing)
            if (abs(xVel) > 1.3)
                yVel -= 0.16
        }
        if (target == 1 && noglide == 0 && global.difficulty == 2)
        {
            if (oCharacter.x > x && xVel < 4)
                xVel += 0.2
            if (oCharacter.x < x && xVel > -4)
                xVel -= 0.2
        }
    }
    if (state != 1)
        yVel += 0.1
    if (stun == 0)
        moveTo(xVel, yVel)
}
if (state == 100)
    enemy_death()
