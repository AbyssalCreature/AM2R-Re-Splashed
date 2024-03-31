if (pbeam == 1)
{
    alarm[1] = (2 + sbeam)
    if (time > 1)
    {
        mytrail = instance_create(x, y, oBeamTrail)
        mytrail.sprite_index = sprite_index
        mytrail.image_single = 0
        mytrail.image_alpha = 0.4
        mytrail.direction = direction
        if (wbeam == 0)
            mytrail.speed = ((-speed) / 2)
        mytrail.image_angle = image_angle
        mytrail.image_xscale = image_xscale
        mytrail.image_yscale = image_yscale
    }
}
