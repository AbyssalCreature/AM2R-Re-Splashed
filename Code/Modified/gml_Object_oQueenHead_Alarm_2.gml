var xx, yy, prj;
xx = ((x + lengthdir_x(-1, image_angle)) - lengthdir_y(-6, image_angle))
yy = ((y + lengthdir_y(-1, image_angle)) + lengthdir_x(-6, image_angle))
prj = instance_create(xx, yy, oMZetaProj)
prj.speed = 5.5
prj.gravity = 0.1
prj.gravity_direction = 270
prj.direction = (image_angle + irandom_range(-15, 15))
prj.damage = global.mod_queenDacid
prj.alarm[0] = 315
if (state == 6 && statetime < 135)
    alarm[2] = 1
