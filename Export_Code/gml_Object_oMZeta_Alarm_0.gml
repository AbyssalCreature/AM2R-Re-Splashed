var prj;
prj = instance_create(((x - surf_x) + mouth_x), ((y - surf_y) + mouth_y), oMZetaProj)
prj.speed = 4
prj.gravity = 0.1
prj.gravity_direction = 270
prj.direction = ((body_angle + ((head_dir + mouth_dir) * facing)) + head_angle)
if (facing == -1)
    prj.direction += 180
if (state == 11 && statetime < 60)
    alarm[0] = 3
