var prj;
if (frozen == 0)
{
    prj = instance_create(x, y, oDrivelProj)
    prj.speed = 0
    prj.gravity = 0.1
    prj.gravity_direction = 270
}
alarm[0] = 180
