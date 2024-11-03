action_inherited()
enemy_active_check(70)
if (active == 1 && stun == 0 && frozen == 0 && state != 100)
{
    if (state == 1)
        state = 2
    if (state == 2)
    {
        yVel += 0.25
        if (clawangle > 0)
            clawangle -= 2
        if (isCollisionBottom(1) && yVel > 0)
        {
            xVel = 0
            yVel = 0
            clawangle = -30
        }
    }
    if (stun == 0)
        moveTo(xVel, yVel)
}
if (state == 100)
{
    enemy_death2()
    repeat (20)
        instance_create(x, y, oDebris)
}
