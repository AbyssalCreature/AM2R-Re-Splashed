CollisionTop = collision_line((x - 8), (y - 7), (x + 8), (y - 7), oSolid, true, true)
CollisionRight = collision_line((x + 9), (y + 6), (x + 9), (y - 6), oSolid, true, true)
CollisionLeft = collision_line((x - 9), (y - 6), (x - 9), (y + 6), oSolid, true, true)
CollisionBottom = collision_line((x - 8), (y + 7), (x + 8), (y + 7), oSolid, true, true)
if (state == 0)
{
    if (statetime == 0)
    {
        hspeed = 4
        vspeed = random_range(-0.5, 0.5)
    }
    if (speed > 2)
        speed -= 0.05
    if (statetime == 120)
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
    if (statetime >= 150)
    {
        state = 2
        statetime = 0
    }
}
if (state == 2)
{
    speed *= 0.9
    if (image_alpha > 0)
        image_alpha -= 0.1
    else
        instance_destroy()
}
if (CollisionTop != oTestKeys)
{
    if instance_exists(CollisionTop)
    {
        if (vspeed < 0)
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
        if (vspeed > 0)
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
        if (hspeed < 0)
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
        if (hspeed > 0)
        {
            hspeed *= -1
            shaking = 1
            if (state == 0)
                vspeed = random_range(-2, 2)
        }
    }
}
if (shaking > 0)
    image_speed = 1
else if (image_speed > 0.25)
    image_speed -= 0.05
if (state == 100)
    enemy_death()
if (shaking > 0)
    shaking -= 1
if (image_alpha < 1)
    image_alpha += 0.05
event_inherited()
