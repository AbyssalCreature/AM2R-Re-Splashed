action_inherited()
enemy_active_check(20)
enemy_target_check(180, 0)
if (frozen == 0)
{
    if (active == 1)
    {
        if (state == 1)
        {
            xVel = (1 * facing)
            yVel = 0
            image_angle = 0
            if (isCollisionRight(2) && facing == 1)
            {
                facing = -1
                state = 2
                image_index = 0
            }
            if (isCollisionLeft(2) && facing == -1)
            {
                facing = 1
                state = 2
                image_index = 0
            }
        }
        if (state == 2)
            xVel *= 0.7
        if (state == 3)
        {
            xVel *= 0.9
            image_angle = (point_direction(x, y, oCharacter.x, (oCharacter.y - 16)) + (180 * facing == -1))
            if (y > (oCharacter.y - 26))
                yVel = -2
            if (y < (oCharacter.y - 26))
                yVel = 2
            if (y > (oCharacter.y - 30) && y < (oCharacter.y - 20))
            {
                sfx_play(sndYumboDash)
                state = 4
                alarm[2] = 60
            }
            if (target == 0)
                state = 1
        }
        if (state == 4)
        {
            image_angle = 0
            xVel = (3 * facing)
            yVel = 0
            if (isCollisionRight(4) || isCollisionLeft(4))
                state = 1
        }
        if (stun == 0)
            moveTo(xVel, yVel)
    }
    if (active == 0 && state == 4)
        state = 1
    if (state == 1)
    {
        sprite_index = sYumbo
        image_speed = 0.5
    }
    if (state == 2)
    {
        sprite_index = sYumboTurn
        image_speed = 0.2
    }
    if (state == 3)
    {
        sprite_index = sYumbo
        image_speed = 0.5
    }
    if (state == 4)
    {
        sprite_index = sYumbo
        image_speed = 1
    }
}
if (state == 100)
    enemy_death()
