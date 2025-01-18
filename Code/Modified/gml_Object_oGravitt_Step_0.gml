event_inherited()
if (active == 1 && frozen == 0)
{
    if (state == 1)
    {
        if (facing == 1)
        {
            if (isCollisionRight(2) || isCollisionEdgeRight(6))
                facing = -1
        }
        else if (facing == -1)
        {
            if (isCollisionLeft(2) || isCollisionEdgeLeft(6))
                facing = 1
        }
        image_speed = (0.2 * facing)
        hspeed = (0.5 * facing)
        if (statetime > 60)
        {
            if instance_exists(oMissile)
            {
                if (distance_to_object(oMissile) < 30)
                {
                    state = 2
                    statetime = 0
                }
            }
            if instance_exists(oBeam)
            {
                if (distance_to_object(oBeam) < 30)
                {
                    state = 2
                    statetime = 0
                }
            }
        }
        if (statetime == timer)
        {
            state = 2
            statetime = 0
        }
    }
    if (state == 2)
    {
        if (statetime == 0)
        {
            hspeed = 0
            image_index = 0
            image_speed = 0
            canbehit = 0
        }
        if (statetime > 0 && statetime < 300 && yoffset < 12)
        {
            yoffset += 2
            y += 2
        }
        if (statetime > 300 && yoffset > 0)
        {
            yoffset -= 1
            y -= 1
        }
        if (statetime == 320)
        {
            state = 1
            statetime = 0
            canbehit = 1
        }
    }
    if stun
    {
        speed = 0
        image_speed = 0
    }
}
if frozen
{
    speed = 0
    image_speed = 0
    shell.active = 0
}
else
    shell.active = 1
shell.x = x
shell.y = y
if (state == 100)
    enemy_death()
