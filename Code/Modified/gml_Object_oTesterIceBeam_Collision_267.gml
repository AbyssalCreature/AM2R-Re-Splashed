if (global.difficulty >= 1)
{
    prj = instance_create((x + 12), (y - 12), oTesterIceBeam2)
    prj.speed = speed
    prj.direction = 45
    prj = instance_create((x - 12), (y - 12), oTesterIceBeam2)
    prj.speed = speed
    prj.direction = 135
    prj = instance_create((x - 12), (y + 12), oTesterIceBeam2)
    prj.speed = speed
    prj.direction = 225
    prj = instance_create((x + 12), (y + 12), oTesterIceBeam2)
    prj.speed = speed
    prj.direction = 315
}
if (global.difficulty >= 2)
{
    prj = instance_create((x + 12), y, oTesterIceBeam2)
    prj.speed = speed
    prj.direction = 0
    prj = instance_create(x, (y - 12), oTesterIceBeam2)
    prj.speed = speed
    prj.direction = 90
    prj = instance_create((x - 12), y, oTesterIceBeam2)
    prj.speed = speed
    prj.direction = 180
    prj = instance_create(x, (y + 12), oTesterIceBeam2)
    prj.speed = speed
    prj.direction = 270
}
event_user(0)
