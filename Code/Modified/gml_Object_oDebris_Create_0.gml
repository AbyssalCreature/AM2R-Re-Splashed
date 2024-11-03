alarm[0] = (40 + random(30))
rotspeed = (-10 + random(20))
image_index = round(random((sprite_get_number(sprite_index) - 1)))
image_speed = 0
direction = (180 - random(180))
speed = (0.5 + random(6))
gravity = 0.2
gravity_direction = 270
canbounce = 1
alarm[1] = 1
inwater = 0
playsound = 1
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
if (global.waterlevel != 0)
{
    if (global.watertype == 0 && instance_exists(oWater))
    {
        if (y > (global.waterlevel + oWater.yoffset))
            inwater = 1
        if (y < (global.waterlevel + oWater.yoffset))
            inwater = 0
    }
}
