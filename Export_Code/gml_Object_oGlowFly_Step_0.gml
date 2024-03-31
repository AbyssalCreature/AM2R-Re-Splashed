enemy_active_check(20)
if (active == 1 && stun == 0 && frozen == 0)
{
    if (state == 0)
    {
        if (statetime == 0)
        {
            direction = image_angle
            image_index = 0
        }
        if (statetime >= 60)
        {
            state = 1
            statetime = 0
        }
    }
    if (state == 1)
    {
        direction = image_angle
        speed = 8
        if (image_index < 2)
            image_index += 0.5
        if collision_line((x + lengthdir_x(5, direction)), (y + lengthdir_y(5, direction)), (x + lengthdir_x(6, direction)), (y + lengthdir_y(6, direction)), oSolid, true, true)
        {
            speed = 0
            image_angle += 180
            if (image_angle > 360)
                image_angle -= 360
            state = 0
            statetime = -1
        }
    }
}
else
{
    speed = 0
    image_speed = 0
}
if (state == 100)
    enemy_death()
event_inherited()
