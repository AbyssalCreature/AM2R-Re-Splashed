var numproj;
if (!damaged)
{
    if (type == 0)
    {
        prj = instance_create(x, y, oTesterMissile)
        prj.direction = image_angle
        prj.image_angle = image_angle
        prj.speed = 2
        with (oTester)
            alarm[1] = 1
    }
    if (type == 1)
    {
        if (global.difficulty == 0)
            numproj = 1
        if (global.difficulty == 1)
            numproj = 3
        if (global.difficulty >= 2)
            numproj = 5
        i = 0
        repeat numproj
        {
            prj = instance_create(x, y, oTesterIceBeam)
            prj.direction = image_angle
            prj.image_angle = image_angle
            prj.speed = (1 + i)
            i += 1
        }
        with (oTester)
            alarm[2] = 1
    }
    if (type == 4)
    {
        pproj = instance_create(x, y, oTesterPlasmaBeam)
        pproj.image_angle = image_angle
    }
    if (type == 3 || type == 2)
        alarm[0] = 1
}
