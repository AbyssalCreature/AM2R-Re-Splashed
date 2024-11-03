action_inherited()
if (active == 1 && stun == 0 && frozen == 0)
{
    if (state == 1)
    {
        if (distance_to_object(oCharacter) < 200)
            state = 2
    }
    if (state == 2)
    {
        if (oCharacter.x >= x)
            hspeed += 0.07
        if (oCharacter.x < x)
            hspeed -= 0.07
        if ((oCharacter.y - 24) >= y)
            vspeed += 0.1
        if ((oCharacter.y - 24) < y)
            vspeed -= 0.1
        if (speed > 3)
            speed = 3
    }
    image_speed = 0.5
}
else
    speed = 0
if (state == 100)
{
    enemy_death()
    repeat (5)
        instance_create(x, y, oDebris)
}
