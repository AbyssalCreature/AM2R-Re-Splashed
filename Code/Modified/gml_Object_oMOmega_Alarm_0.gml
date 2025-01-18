var prj;
prj = instance_create(((x - surf_x) + mouth_x), ((y - surf_y) + mouth_y), oMOmegaFlame)
prj.speed = 5
prj.direction = ((body_angle + ((head_dir + mouth_dir) * facing)) + head_angle)
if (facing == -1)
    prj.direction += 180
if (state == 5)
{
    if (statetime < 50)
        alarm[0] = 3
}
else if (state == 6)
{
    if (statetime < 160)
        alarm[0] = 3
}
else if (state == 11)
{
    if (statetime < 80)
        alarm[0] = 3
}
