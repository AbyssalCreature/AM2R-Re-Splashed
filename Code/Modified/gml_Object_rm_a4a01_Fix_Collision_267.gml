if (global.screwattack == 0)
{
    with (112039)
        y += 50
    with (112040)
        y += 50
    with (112041)
        y += 50
    instance_create(48, 320, oBlockSpeed)
    instance_create(48, 336, oBlockSpeed)
    instance_create(48, 352, oBlockSpeed)
}
instance_destroy()
