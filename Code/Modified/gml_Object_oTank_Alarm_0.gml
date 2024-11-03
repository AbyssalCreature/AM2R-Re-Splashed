if (state != 100)
{
    prj = instance_create((x - 15), y, oTesterMissile)
    prj.direction = (200 + random_range(-10, 10))
    prj.image_angle = prj.direction
    prj.speed = 3
    sfx_play(sndFireball)
    alarm[0] = 110
}
