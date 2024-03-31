if (state == 0)
{
    if (statetime == 120)
    {
        state = 1
        statetime = 0
    }
}
if (state == 1)
{
    if (statetime == 5)
        sfx_play(sndMGammaMorph)
    if (image_index < 4)
        image_index += 0.1
    if (statetime == 45)
    {
        state = 2
        statetime = 0
    }
}
if (state == 2)
{
    if (image_index < 12)
        image_index += 0.1
    xoffset = round(random(2))
    yoffset = round(random(2))
    if (statetime == 10)
    {
        bld = instance_create((x - 10), (y - 12), oFXAnimSpark)
        bld.sprite_index = sMGammaBlood1
        bld.image_speed = 0.5
        bld.image_alpha = 0.6
    }
    if (statetime == 40)
    {
        bld = instance_create((x + 8), (y - 1), oFXAnimSpark)
        bld.sprite_index = sMGammaBlood1
        bld.image_speed = 0.5
        bld.image_alpha = 0.6
        bld.image_angle = 180
    }
    if (statetime == 60)
    {
        bld = instance_create((x - 16), (y - 2), oFXAnimSpark)
        bld.sprite_index = sMGammaBlood1
        bld.image_speed = 0.5
        bld.image_alpha = 0.6
        bld.image_angle = 90
    }
    if (statetime == 80)
    {
        state = 3
        statetime = 0
    }
}
if (state == 3)
{
    if (statetime == 10)
        sfx_play(sndMGammaEyes)
    xoffset = 0
    yoffset = 0
    if (image_index < 25)
        image_index += 0.25
    if (statetime == 90)
    {
        create_gamma(x, y, 12, 1)
        with (oEventCamera2)
            alarm[0] = 1
        instance_destroy()
    }
}
statetime += 1
