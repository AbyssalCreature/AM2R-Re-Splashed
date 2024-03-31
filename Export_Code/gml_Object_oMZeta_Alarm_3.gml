if roaring
{
    drl = instance_create((((x - surf_x) + mouth_x) + random_range(-2, 2)), ((y - surf_y) + mouth_y), oMZetaDrool)
    drl.hspeed = (1.5 * facing)
}
alarm[3] = (3 + random(10))
