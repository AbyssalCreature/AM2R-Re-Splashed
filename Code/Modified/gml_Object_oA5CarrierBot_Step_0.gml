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
    gravity_direction = point_direction((x + (1 * facing)), (y + 18), targetx, targety)
    gravity = 0.1
    speed = min(speed, 3)
    if abs(hspeed > 0.1)
    {
        if (hspeed > 0)
            facing = 1
        else
            facing = -1
    }
    if (point_distance((x + (1 * facing)), (y + 18), targetx, targety) < 8)
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
    if ((x + (1 * facing)) < targetx)
        x += 1
    if ((x + (1 * facing)) > targetx)
        x -= 1
    if ((y + 18) < targety)
        y += 1
    if ((y + 18) > targety)
        y -= 1
    if (statetime == 30)
    {
        draw_battery = 0
        event_user(0)
    }
    if (statetime == 60)
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
