action_inherited()
enemy_active_check(20)
if (active == 1 && frozen == 0)
{
    if (state == 0)
    {
        if (statetime < 11)
        {
            yVel = random_range(-1.5, -0.5)
            xVel = random_range(-1, 1)
        }
        else if (statetime > 10 && statetime < 60)
        {
            yVel = yVelStart
            xVel = xVelStart
        }
        else
            state = 1
    }
    if (state == 1)
    {
        if (x < targetx)
            hspeed += 0.08
        else
            hspeed -= 0.08
        if (y < targety)
            vspeed += 0.08
        else
            vspeed -= 0.08
        speed = min(3, speed)
        depth = -200
    }
    if (stun == 0)
        moveTo(xVel, yVel)
    if instance_exists(parent)
    {
        if (point_distance(oCharacter.x, (oCharacter.y - 16), parent.x, parent.y) < 320)
        {
            targetx = oCharacter.x
            targety = (oCharacter.y - 16)
        }
        else
        {
            targetx = parent.x
            targety = (parent.y - 45)
        }
    }
    else
    {
        targetx = randomx
        targety = randomy
        speed = min(12, speed)
    }
}
if (state == 100)
    enemy_death()
if (y > global.waterlevel && global.waterlevel != 0)
    enemy_death()
