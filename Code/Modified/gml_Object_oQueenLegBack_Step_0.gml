if (state == 0)
{
    if ((x - base_x) < -24)
    {
        state = 1
        targetx = (x + 80)
        vspeed = -2.5
        gravity = 0.2
        gravity_direction = 270
    }
    if ((x - base_x) > 70)
    {
        state = 1
        targetx = (x - 80)
        vspeed = -2.5
        gravity = 0.2
        gravity_direction = 270
    }
}
if (state == 1)
{
    if (abs((x - targetx)) > 1)
        x = lerp(x, targetx, 0.1)
    else
        state = 0
}
col1 = collision_line(x, (y - 20), x, y, oSolid, true, true)
col2 = collision_point(x, (y + 1), oSolid, 1, 1)
if (col2 < 0)
    y += 1
if (col1 > 0)
{
    y -= 1
    if (vspeed > 0)
    {
        vspeed = 0
        gravity = 0
        event_user(0)
    }
}
