action_inherited()
enemy_active_check(20)
if (active == 1 && frozen == 0)
{
    if (state == 0)
    {
        if ((y - 8) <= global.waterlevel)
            state = 1
        if (statetime < 11)
        {
            yVel = random_range(-1, -0.5)
            xVel = random_range(-1, 1)
        }
        else if (statetime > 10 && statetime < 60)
        {
            yVel = (yVelStart - 0.02)
            xVel = xVelStart
        }
        else
            state = 1
    }
    if (state == 1)
    {
        turnTimer--
        if (turnTimer == 0)
        {
            if (global.difficulty < 2)
            {
                facing = (-facing)
                turnTimer = irandom_range(60, 180)
                driftMark = (turnTimer / 2)
            }
            else if (x >= oCharacter.x && facing == 1)
            {
                facing = -1
                turnTimer = irandom_range(60, 180)
                driftMark = (turnTimer / 2)
            }
            else if (x <= oCharacter.x && facing == -1)
            {
                facing = 1
                turnTimer = irandom_range(60, 180)
                driftMark = (turnTimer / 2)
            }
            else
                turnTimer = irandom_range(60, 180)
        }
        xVel = (driftSpeed * facing)
        if (turnTimer > driftMark)
            yVel = 0.3
        else
            yVel = -0.1
        if (facing == facing)
        {
            if (turnTimer > (driftMark * 1.9) || turnTimer < (driftMark * 0.1))
                sprite_index = sBlobWaterIdle
            else
                sprite_index = sBlobWaterRight
        }
        if (facing == (-facing))
        {
            if (turnTimer > (driftMark * 1.9) || turnTimer < (driftMark * 0.1))
                sprite_index = sBlobWaterIdle
            else
                sprite_index = sBlobWaterLeft
        }
    }
    if (stun == 0)
        moveTo(xVel, yVel)
}
if (state == 100 || isCollisionBottom(2))
    enemy_death()
