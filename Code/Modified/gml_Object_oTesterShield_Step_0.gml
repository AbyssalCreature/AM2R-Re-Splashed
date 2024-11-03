if (shaking > 0)
{
    shaking -= 1
    offx = random_range(-2, 2)
    offy = random_range(-2, 2)
}
else
{
    offx = 0
    offy = 0
}
if (flashing > 0)
    flashing -= 1
center_x = (x + lengthdir_x(40, (image_angle + 45)))
center_y = (y + lengthdir_y(40, (image_angle + 45)))
