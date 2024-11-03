action_inherited()
enemy_active_check(20)
enemy_target_check(90, 1)
if (active == 1 && frozen == 0)
{
    if (state == 1)
    {
        xVel = (0.5 * facing)
        if (isCollisionRight(2) && facing == 1)
            facing = -1
        if (isCollisionLeft(2) && facing == -1)
            facing = 1
        if (target == 1)
        {
            if ((oCharacter.y - 8) > y)
                yVel = 0.3
            if ((oCharacter.y - 8) < y)
                yVel = -0.3
        }
        else
            yVel = 0
    }
    if (stun == 0)
        moveTo(xVel, yVel)
    image_speed = 0.35
}
if (state == 100)
    enemy_death()
