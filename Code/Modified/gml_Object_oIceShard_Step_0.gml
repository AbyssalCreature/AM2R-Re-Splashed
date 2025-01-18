image_angle += rotspeed
if (global.waterlevel != 0 && y > (global.waterlevel + global.wateroffset))
{
    gravity = 0.05
    friction = 0.1
}
else
{
    gravity = 0.2
    friction = 0
}
