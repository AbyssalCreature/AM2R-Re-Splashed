sfx_stop(sndA5WarpDoor)
switch opening
{
    case 1:
        if (point_distance((x + 8), (y + 16), oCharacter.x, oCharacter.y) < soundddistance)
            sfx_play(sndA5WarpDoor)
        image_index = 2
        opening = 2
        alarm[0] = 10
        break
    case 2:
        if (point_distance((x + 8), (y + 16), oCharacter.x, oCharacter.y) < soundddistance)
            sfx_play(sndA5WarpDoor)
        image_index = 3
        opening = 3
        alarm[0] = 45
        break
    case 3:
        if (point_distance((x + 8), (y + 16), oCharacter.x, oCharacter.y) < soundddistance)
            sfx_play(sndA5WarpDoor)
        image_index = 2
        opening = 4
        alarm[0] = 45
        break
    case 4:
        if (point_distance((x + 8), (y + 16), oCharacter.x, oCharacter.y) < soundddistance)
            sfx_play(sndA5WarpDoor)
        image_index = 1
        opening = 1
        alarm[0] = floor(random_range(30, 240))
        break
}

