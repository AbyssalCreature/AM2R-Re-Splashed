action_inherited()
canbeX = 0
enemy_active_check(18)
enemy_target_check(120, 0)
if (active == 1 && frozen == 0)
{
    if (state == 1)
    {
        xVel = (1.5 * facing)
        if (isCollisionRight(2) && facing == 1)
            facing = -1
        if (isCollisionLeft(2) && facing == -1)
            facing = 1
        if (target == 1)
        {
            if ((oCharacter.y - 16) > y)
                yVel = 0.2
            if ((oCharacter.y - 16) < y)
                yVel = -0.2
        }
        else
            yVel = 0
    }
    if (stun == 0)
        moveTo(xVel, yVel)
}
if (state == 100)
{
    enemy_death()
    repeat (4)
        instance_create(x, y, oDebris)
    obj = instance_create((x - 4), y, oTPO2)
    obj.vspeed = -2
    obj = instance_create((x + 4), y, oTPO2)
    obj.vspeed = 2
}
