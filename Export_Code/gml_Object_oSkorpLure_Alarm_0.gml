var i;
switch floor(image_angle)
{
    case 180:
        image_yscale = -1
        break
    case 270:
    case 90:
        sprite_index = skorp_get_lure(sSkorpLureUpR)
        break
    default:
        break
}

i = 0
while (i < 32)
{
    if collision_point(x, y, oSolid, 0, 0)
    {
        x += lengthdir_x(1, image_angle)
        y += lengthdir_y(1, image_angle)
        i++
        continue
    }
    else
    {
        x -= lengthdir_x(1, image_angle)
        y -= lengthdir_y(1, image_angle)
        break
    }
}
startx = x
starty = y
