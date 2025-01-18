enemy_active_check(30)
enemy_target_check(120, 1)
CollisionTop = collision_line((x - 8), (y - 7), (x + 8), (y - 7), oSolid, true, true)
if (CollisionTop == noone)
    CollisionTop = collision_line((x - 8), (y - 7), (x + 8), (y - 7), oEnemySolid, true, true)
CollisionRight = collision_line((x + 9), (y + 6), (x + 9), (y - 6), oSolid, true, true)
if (CollisionRight == noone)
    CollisionRight = collision_line((x + 9), (y + 6), (x + 9), (y - 6), oEnemySolid, true, true)
CollisionLeft = collision_line((x - 9), (y - 6), (x - 9), (y + 6), oSolid, true, true)
if (CollisionLeft == noone)
    CollisionLeft = collision_line((x - 9), (y - 6), (x - 9), (y + 6), oEnemySolid, true, true)
CollisionBottom = collision_line((x - 8), (y + 7), (x + 8), (y + 7), oSolid, true, true)
if (CollisionBottom == noone)
    CollisionBottom = collision_line((x - 8), (y + 7), (x + 8), (y + 7), oEnemySolid, true, true)
if (active == 1 && frozen == 0)
{
    if (state == 0)
    {
        accelx = 0.02
        accely = 0.02
        maxspx = 0.6
        maxspy = 0.5
        if (point_distance(x, y, targetx, targety) < 10)
        {
            currtgt += 1
            if (tgtx[currtgt] == startx && tgty[currtgt] == starty)
                currtgt = 0
            targetx = tgtx[currtgt]
            targety = tgty[currtgt]
        }
        if (point_distance(x, y, oCharacter.x, oCharacter.y) < 64 && statetime > 120)
        {
            state = 1
            statetime = 0
        }
    }
    if (state == 1)
    {
        accelx = 0.1
        accely = 0.05
        maxspx = 1.5
        maxspy = 1
        targetx = oCharacter.x
        targety = (oCharacter.y - 8)
        if (statetime >= 300)
        {
            state = 0
            statetime = 0
        }
    }
    if (targetx > x)
        hspeed += accelx
    if (targetx < x)
        hspeed -= accelx
    if (targety > y)
        vspeed += accely
    if (targety < y)
        vspeed -= accely
    hspeed = min(hspeed, maxspx)
    hspeed = max(hspeed, (-maxspx))
    vspeed = min(vspeed, maxspy)
    vspeed = max(vspeed, (-maxspy))
    if inwater
        speed = 0.7
    if (CollisionTop != oTestKeys)
    {
        if instance_exists(CollisionTop)
        {
            if (vspeed < 0 && CollisionTop.depth != 10)
            {
                vspeed *= -1
                shaking = 1
            }
        }
    }
    if (CollisionBottom != oTestKeys)
    {
        if instance_exists(CollisionBottom)
        {
            if (vspeed > 0 && CollisionBottom.depth != 10)
            {
                vspeed *= -1
                shaking = 1
            }
        }
    }
    if (CollisionLeft != oTestKeys)
    {
        if instance_exists(CollisionLeft)
        {
            if (hspeed < 0 && CollisionLeft.depth != 10)
            {
                hspeed *= -1
                shaking = 1
            }
        }
    }
    if (CollisionRight != oTestKeys)
    {
        if instance_exists(CollisionRight)
        {
            if (hspeed > 0 && CollisionRight.depth != 10)
            {
                hspeed *= -1
                shaking = 1
            }
        }
    }
    if (shaking > 0)
        image_speed = 1
    else if (image_speed > 0.25)
        image_speed -= 0.05
}
else
    speed = 0
if (state == 100)
    enemy_death()
if (shaking > 0)
    shaking -= 1
event_inherited()
