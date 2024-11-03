image_angle = point_direction(x, y, oCharacter.x, (oCharacter.y - 16))
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
center_x = (x + lengthdir_x(20, image_angle))
center_y = (y + lengthdir_y(20, image_angle))
