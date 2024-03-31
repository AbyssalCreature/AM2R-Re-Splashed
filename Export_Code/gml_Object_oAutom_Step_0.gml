action_inherited()
enemy_active_check(20)
if (active == 1 && stun == 0 && frozen == 0)
{
    if (state == 1)
    {
        if (collision_line((x - 16), (y - 8), (x - 16), y, oSolid, true, true) > 0 && facing == -1)
            facing = 1
        if (collision_line((x + 16), (y - 8), (x + 16), y, oSolid, true, true) > 0 && facing == 1)
            facing = -1
        hspeed = facing
        calpha = 0
    }
    if (state == 2)
    {
        hspeed = 0
        if (calpha < 1)
            calpha += 0.05
    }
    if (state == 3)
    {
        hspeed = 0
        if (calpha > 0)
            calpha -= 0.05
    }
    image_speed = 0.5
}
else
    hspeed = 0
if (state == 100)
{
    enemy_death2()
    repeat (20)
        instance_create(x, y, oDebris)
}
