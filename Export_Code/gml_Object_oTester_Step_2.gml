if instance_exists(s1)
{
    s1.image_angle = (image_angle + sangle)
    s1.x = (x + lengthdir_x(soffset, (((image_angle + sangle) + 45) + (shuriken * 90))))
    s1.y = (y + lengthdir_y(soffset, (((image_angle + sangle) + 45) + (shuriken * 90))))
}
if instance_exists(s2)
{
    s2.image_angle = ((image_angle + sangle) + 90)
    s2.x = (x + lengthdir_x(soffset, (((image_angle + sangle) + 135) + (shuriken * 90))))
    s2.y = (y + lengthdir_y(soffset, (((image_angle + sangle) + 135) + (shuriken * 90))))
}
if instance_exists(s3)
{
    s3.image_angle = ((image_angle + sangle) + 180)
    s3.x = (x + lengthdir_x(soffset, (((image_angle + sangle) + 225) + (shuriken * 90))))
    s3.y = (y + lengthdir_y(soffset, (((image_angle + sangle) + 225) + (shuriken * 90))))
}
if instance_exists(s4)
{
    s4.image_angle = ((image_angle + sangle) + 270)
    s4.x = (x + lengthdir_x(soffset, (((image_angle + sangle) + 315) + (shuriken * 90))))
    s4.y = (y + lengthdir_y(soffset, (((image_angle + sangle) + 315) + (shuriken * 90))))
}
if instance_exists(c1)
{
    c1.image_angle = image_angle
    c1.x = (x + lengthdir_x(coffset, image_angle))
    c1.y = (y + lengthdir_y(coffset, image_angle))
}
if instance_exists(c2)
{
    c2.image_angle = (image_angle + 90)
    c2.x = (x + lengthdir_x(coffset, (image_angle + 90)))
    c2.y = (y + lengthdir_y(coffset, (image_angle + 90)))
}
if instance_exists(c3)
{
    c3.image_angle = (image_angle + 180)
    c3.x = (x + lengthdir_x(coffset, (image_angle + 180)))
    c3.y = (y + lengthdir_y(coffset, (image_angle + 180)))
}
if instance_exists(c4)
{
    c4.image_angle = (image_angle + 270)
    c4.x = (x + lengthdir_x(coffset, (image_angle + 270)))
    c4.y = (y + lengthdir_y(coffset, (image_angle + 270)))
}
if instance_exists(eye)
{
    eye.x = x
    eye.y = y
}
if instance_exists(glass)
{
    glass.x = x
    glass.y = y
    glass.image_angle = image_angle
}
