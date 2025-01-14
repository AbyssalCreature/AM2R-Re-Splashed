disc1.frozen = frozen
disc2.frozen = frozen
if (frozen == 0)
{
    if attack
    {
        if (offset < 24)
            offset += 2
    }
    else if (offset > 0)
        offset -= 1
    image_index = floor((offset / 4.8))
    switch floor(image_index)
    {
        case 0:
            len = 11
            dir = 24
            break
        case 1:
            len = 13
            dir = 10
            break
        case 2:
            len = 16
            dir = 24
            break
        case 3:
        case 4:
            len = 18
            dir = 36
            break
    }

    disc1.x = (x + lengthdir_x(len, (image_angle + dir)))
    disc1.y = (y + lengthdir_y(len, (image_angle + dir)))
    disc2.x = (x + lengthdir_x(len, (image_angle - dir)))
    disc2.y = (y + lengthdir_y(len, (image_angle - dir)))
    x = (startx + lengthdir_x(offset, image_angle))
    y = (starty + lengthdir_y(offset, image_angle))
    if (state == 100)
    {
        with (disc1)
            instance_destroy()
        with (disc2)
            instance_destroy()
        with (lure)
            state = 100
        enemy_death()
    }
}
if (frozen > 1)
{
    disc1.sprite_index = disc1.frozenspr
    disc2.sprite_index = disc2.frozenspr
}
else if (frozen == 1)
{
    disc1.sprite_index = disc1.myspr
    disc2.sprite_index = disc2.myspr
}
event_inherited()
