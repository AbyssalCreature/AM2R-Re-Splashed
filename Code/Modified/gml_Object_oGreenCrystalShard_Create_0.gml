if (instance_number(oIceShard) > 60)
    instance_destroy()
alarm[0] = (40 + random(30))
rotspeed = (-10 + random(20))
image_index = round(random(5))
image_speed = 0
direction = (135 - random(90))
speed = (0.5 + random(5))
gravity = 0.15
gravity_direction = 270
alarm[1] = (5 + random(90))
scale = (0.2 + random(0.8))
if (collision_line((x - 2), y, (x + 2), y, oSolid, false, false) > 0 && collision_point((x - 10), y, oSolid, 0, 0) < 0)
{
    x -= 10
    exit
}
if (collision_line((x - 2), y, (x + 2), y, oSolid, false, false) > 0 && collision_point((x + 10), y, oSolid, 0, 0) < 0)
{
    x += 10
    exit
}
if (collision_line(x, (y - 2), x, (y + 2), oSolid, false, false) > 0 && collision_point(x, (y + 10), oSolid, 0, 0) < 0)
{
    y += 10
    exit
}
if (collision_line(x, (y - 2), x, (y + 2), oSolid, false, false) > 0 && collision_point(x, (y - 10), oSolid, 0, 0) < 0)
{
    y -= 10
    exit
}
