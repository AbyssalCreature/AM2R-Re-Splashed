action_inherited()
enemy_active_check(70)
enemy_target_check(firerange, 1)
if (active == 1 && stun == 0 && frozen == 0 && state != 100)
{
    if (state == 0)
    {
        if (statetime >= firedelay)
        {
            if (target == 1)
            {
                state = 1
                statetime = 0
                firedelay = (200 + random(200))
            }
            else
                statetime = 1
        }
        if (oCharacter.x < x)
            xVel += (0.05 * movedir)
        else
            xVel -= (0.05 * movedir)
        if (xVel > 0 && position_meeting((x + 20), y, oShielder))
            xVel = -2
        if (xVel < 0 && position_meeting((x - 20), y, oShielder))
            xVel = 2
        if (xVel > 2)
            xVel = 2
        if (xVel < -2)
            xVel = -2
        if (yVel > 2)
            yVel = 2
        if (yVel < -2)
            yVel = -2
    }
    if (state == 1)
    {
        if (statetime == 0)
        {
            xVel = 0
            yVel = 0
            proj = instance_create(x, (y + 7), oGunzooProj2)
        }
        if (statetime >= 60)
        {
            state = 0
            statetime = 0
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
if instance_exists(myobj)
{
    myobj.x = x
    myobj.y = y
}
statetime += 1
