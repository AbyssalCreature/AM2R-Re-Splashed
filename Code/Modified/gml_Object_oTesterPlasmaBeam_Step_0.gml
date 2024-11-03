if fadeout
{
    if (image_alpha > 0)
        image_alpha -= 0.1
    else
        instance_destroy()
}
targetx = (x + lengthdir_x(1000, image_angle))
targety = (y + lengthdir_y(1000, image_angle))
if collision_line(x, y, targetx, targety, oCharacter, true, false)
    damage_player(damage, 5, -3, 0, 0)
