var collider;
timer++
if (timer > ((2 * pi) / frequency))
    timer -= ((2 * pi) / frequency)
if (y < (oCharacter.y - 1))
{
    x = -500
    depth = 90
}
else
{
    x = xstart
    depth = -90
}
if (place_meeting(x, (y - 1), oCharacter) && oCharacter.state != oCharacter.JUMPING)
{
    if (!(place_meeting(x, (y + 1), oSolid)))
    {
        if (lift <= 0)
        {
            yVel += 0.1
            if (yVel > max_down_speed)
                yVel = max_down_speed
            image_speed = 0.55
            grounded = 0
        }
        else
        {
            yVel -= 0.1
            if (yVel < (-max_down_speed))
                yVel = (-max_down_speed)
            image_speed = 0.55
            grounded = 0
            if (y <= (ystart - lift))
                yVel = 0
        }
    }
    else
    {
        yVel = 0
        image_speed = 0.2
        grounded = 1
    }
    timer = 0
    sprite_index = carrying_sprite
}
else
{
    if (y > ystart)
    {
        yVel = (-(min((abs((y - ystart)) / 15), max_up_speed)))
        timer = 0
        grounded = 0
    }
    if (y < ystart)
    {
        yVel = min((abs((y - ystart)) / 15), max_up_speed)
        timer = 0
        grounded = 0
    }
    if (abs((y - ystart)) <= 1)
        y = ystart
    if (y < -20)
        y = -20
    sprite_index = flying_sprite
    image_speed = 0.33
}
collider = collision_rectangle((xstart - 8), y, (xstart + 8), (y + 24), oBeam, 0, 0)
if instance_exists(collider)
{
    with (collider)
    {
        event_user(1)
        if (!pbeam)
            instance_destroy()
    }
}
collider = collision_rectangle((xstart - 8), y, (xstart + 8), (y + 24), oMissile, 0, 1)
if instance_exists(collider)
{
    with (collider)
        event_user(1)
}
