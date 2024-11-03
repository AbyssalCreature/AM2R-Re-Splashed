if (type == 3)
{
    if ((!damaged) && open)
    {
        prj = instance_create(x, y, oTesterSpazerBeam)
        prj.direction = image_angle
        prj.image_angle = image_angle
        prj.speed = 4
        if (global.difficulty == 1)
        {
            prj = instance_create(x, y, oTesterSpazerBeam)
            prj.direction = (image_angle + 40)
            prj.image_angle = (image_angle + 40)
            prj.speed = 4
            prj = instance_create(x, y, oTesterSpazerBeam)
            prj.direction = (image_angle - 40)
            prj.image_angle = (image_angle - 40)
            prj.speed = 4
        }
        if (global.difficulty >= 2)
        {
            prj = instance_create(x, y, oTesterSpazerBeam)
            prj.direction = (image_angle + 30)
            prj.image_angle = (image_angle + 30)
            prj.speed = 5
            prj = instance_create(x, y, oTesterSpazerBeam)
            prj.direction = (image_angle - 30)
            prj.image_angle = (image_angle - 30)
            prj.speed = 5
            prj = instance_create(x, y, oTesterSpazerBeam)
            prj.direction = (image_angle + 60)
            prj.image_angle = (image_angle + 60)
            prj.speed = 5
            prj = instance_create(x, y, oTesterSpazerBeam)
            prj.direction = (image_angle - 60)
            prj.image_angle = (image_angle - 60)
            prj.speed = 5
        }
        with (oTester)
            alarm[0] = 1
    }
    if open
    {
        if (global.difficulty < 2)
            alarm[0] = 16
        else
            alarm[0] = 10
    }
}
if (type == 2)
{
    if ((!damaged) && open)
    {
        prj = instance_create(x, y, oTesterWaveBeam)
        prj.direction = image_angle
        prj.image_angle = image_angle
        prj.speed = 6
        if (x < 160)
            prj.hspeed -= 6
        else
            prj.hspeed += 6
        with (oTester)
            alarm[0] = 1
    }
    if open
        alarm[0] = 8
}
