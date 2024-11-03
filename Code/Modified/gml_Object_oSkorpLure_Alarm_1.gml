visible = true
switch floor(image_angle)
{
    case 270:
    case 90:
        sprite_index = skorp_get_lure(sSkorpLureUpR)
        break
    default:
        sprite_index = skorp_get_lure(sSkorpLureR)
        break
}

image_index = 0
