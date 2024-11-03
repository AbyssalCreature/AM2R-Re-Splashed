enemy_active_check(30)
enemy_target_check(140, 0)
if (active == 1 && frozen == 0)
{
    yVel += 0.2
    if (isCollisionBottom(1) == 1)
        yVel = 0
    if (state == 0)
    {
        sprite_index = sMotoRun
        image_speed = 0
        image_index = 0
        if (statetime > 60)
        {
            state = 1
            statetime = 0
        }
    }
    if (state == 1)
    {
        xVel = (3 * facing)
        sprite_index = sMotoRun
        image_speed = 0.5
        if (statetime == 0)
            image_index = 0
        if (statetime > 60 && ((oCharacter.x < (x - 32) && facing == 1) || (oCharacter.x > (x + 32) && facing == -1)))
        {
            state = 2
            statetime = 0
        }
        if (collision_line((x + (11 * facing)), (y - 16), (x + (11 * facing)), (y - 8), oSolid, true, true) > 0)
        {
            state = 2
            statetime = 20
            xVel = 0
        }
        if (statetime > 30 && ((facing == 1 && collision_point((x + 32), (y - 8), oMoto, 1, 1)) || (facing == -1 && collision_point((x - 32), (y - 8), oMoto, 1, 1))))
        {
            state = 2
            statetime = 10
        }
        if (collision_line((x + (12 * facing)), (y - 8), (x + (12 * facing)), (y + 24), oSolid, true, true) == -4)
        {
            state = 2
            statetime = 20
            xVel *= 0.2
        }
        if ((isCollisionRight(1) && facing == 1) || (isCollisionLeft(1) && facing == -1))
        {
            if (collision_line((x + (11 * facing)), (y - 20), (x + (11 * facing)), (y - 4), oSolid, true, true) == -4)
            {
                while isCollisionBottom(1)
                    y -= 1
            }
        }
        if (collision_line((x + (16 * facing)), (y - 48), (x + (16 * facing)), (y - 18), oSolid, true, true) == -4 && collision_line((x + (16 * facing)), (y - 16), (x + (16 * facing)), (y - 8), oSolid, true, true) > 0)
        {
            state = 3
            statetime = 0
        }
    }
    if (state == 2)
    {
        xVel *= 0.9
        sprite_index = sMotoTurn
        image_speed = 0
        if (statetime < 22)
            image_index = 0
        else
            image_index = 1
        if (statetime == 26)
            facing = (-facing)
        if (statetime > 30)
        {
            state = 1
            statetime = -1
        }
    }
    if (state == 3)
    {
        xVel = (3 * facing)
        if (statetime == 0)
        {
            yVel = -3
            sprite_index = sMotoRun
            image_speed = 0
            image_index = 3
        }
        if (statetime > 2)
        {
            if isCollisionBottom(1)
            {
                state = 1
                statetime = -1
            }
        }
    }
    if (stun == 0)
        moveTo(xVel, yVel)
}
event_inherited()
if (state == 100)
{
    with (mymask)
        instance_destroy()
    enemy_death()
}
if instance_exists(mymask)
{
    mymask.x = (x + (4 * facing))
    mymask.y = y
    mymask.image_xscale = facing
    if (frozen > 0)
        mymask.canhit = 0
    else
        mymask.canhit = 1
}
