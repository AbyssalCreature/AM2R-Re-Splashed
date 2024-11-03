if (state == 1)
{
    gravity_direction = point_direction((x + (1 * facing)), (y + 18), targetx, targety)
    gravity = 0.2
    speed = min(speed, 6)
    if abs(hspeed > 0.1)
    {
        if (hspeed > 0)
            facing = 1
        else
            facing = -1
    }
    if (point_distance((x + (1 * facing)), (y + 18), targetx, targety) < 8)
        instance_destroy()
}
statetime += 1
