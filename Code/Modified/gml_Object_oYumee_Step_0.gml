action_inherited()
if (active == 1 && stun == 0 && frozen == 0)
{
    if (state == 1)
    {
        vspeed = -2.5
        if (y <= (oCharacter.y - 30))
            state = 2
    }
    if (state == 2)
    {
        vspeed = 0
        if (myspeed < 3)
            myspeed += 0.2
        hspeed = (facing * myspeed)
        image_speed = 0.25
    }
}
else
{
    speed = 0
    image_speed = 0
}
if (state == 100)
    enemy_death()
