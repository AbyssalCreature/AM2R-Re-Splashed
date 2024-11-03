if (state == 0)
{
    speed = 0
    gravity = 0
    image_index = 0
    image_speed = 0
    if (statetime == idle_time)
    {
        state = 1
        statetime = 0
    }
}
if (state == 1)
{
    gravity_direction = point_direction((x + (20 * facing)), (y + 8), targetx, targety)
    gravity = 0.1
    speed = min(speed, 3)
    if abs(hspeed > 0.1)
    {
        if (hspeed > 0)
            facing = 1
        else
            facing = -1
    }
    if (distance_to_point(targetx, targety) < 16)
    {
        state = 2
        statetime = 0
    }
}
if (state == 2)
{
    if (statetime == 0)
    {
        gravity = 0
        speed = 0
    }
    if (image_index < 6)
        image_index += 0.25
    if ((x + (20 * facing)) < targetx)
        x += 1
    if ((x + (20 * facing)) > targetx)
        x -= 1
    if ((y + 8) < targety)
        y += 1
    if ((y + 8) > targety)
        y -= 1
    if (statetime == 30)
        alarm[0] = 1
    if (statetime == solder_time)
    {
        state = 3
        statetime = 0
    }
}
if (state == 3)
{
    if (statetime == 0)
    {
        gravity_direction = 90
        gravity = 0.1
    }
    if (image_index > 0)
        image_index -= 0.5
    if (y < (view_yview[0] - 32))
        instance_destroy()
}
statetime += 1
