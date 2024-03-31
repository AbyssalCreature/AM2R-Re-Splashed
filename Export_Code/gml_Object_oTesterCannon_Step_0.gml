switch type
{
    case 0:
        sprite_index = sTesterCannonM
        last_frame = 4
        frame_speed = 0.5
        break
    case 1:
        sprite_index = sTesterCannonI
        last_frame = 2
        frame_speed = 0.2
        break
    case 2:
        sprite_index = sTesterCannonW
        last_frame = 2
        frame_speed = 0.2
        break
    case 3:
        sprite_index = sTesterCannonS
        last_frame = 2
        frame_speed = 0.2
        break
    case 4:
        sprite_index = sTesterCannonP
        last_frame = 2
        frame_speed = 0.2
        break
}

if (open == 0)
{
    if (image_index > 0.001)
        image_index -= frame_speed
}
else if (image_index < last_frame)
    image_index += frame_speed
if instance_exists(pproj)
{
    pproj.image_angle = image_angle
    pproj.x = x
    pproj.y = y
}
if (shaking > 0)
{
    shaking -= 1
    offx = random_range(-1, 1)
    offy = random_range(-1, 1)
}
else
{
    offx = 0
    offy = 0
}
if (flashing > 0)
    flashing -= 1
if (oTester.target_coff > (oTester.coffmax - 10))
    canbehit = 1
else
    canbehit = 0
