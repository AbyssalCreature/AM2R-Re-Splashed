prj = instance_create(x, y, oTesterIceBeam2)
prj.speed = speed
prj.direction = (direction + 135)
prj = instance_create(x, y, oTesterIceBeam2)
prj.speed = speed
prj.direction = (direction - 135)
if (global.difficulty >= 2)
{
    prj = instance_create(x, y, oTesterIceBeam2)
    prj.speed = speed
    prj.direction = (direction + 180)
}
event_user(0)
