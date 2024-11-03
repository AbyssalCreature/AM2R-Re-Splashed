switch floor(image_angle)
{
    case 180:
        image_yscale = -1
        break
    case 90:
        image_yscale = choose(-1, 1)
    case 270:
        image_yscale = choose(-1, 1)
    default:
        break
}

