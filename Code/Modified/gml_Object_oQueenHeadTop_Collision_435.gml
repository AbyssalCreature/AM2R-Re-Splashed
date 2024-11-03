if (oQueen.state != 100)
{
    if (canbehit && other.image_index == 1)
    {
        with (oQueenHead)
            event_user(4)
        if (oQueen.state == 10)
        {
            bld = instance_create((other.x + random_range(-4, 4)), (other.y + random_range(-4, 4)), oFXAnimSpark)
            bld.sprite_index = sMGammaBlood1
            bld.image_speed = 0.5
            bld.image_alpha = 0.6
            bld.image_angle = random(360)
            bld.depth = -100
        }
    }
}
