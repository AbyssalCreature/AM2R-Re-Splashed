if (y < 112)
{
    y += 1
    alarm[1] = 3
    smk = instance_create(((x - 10) + random(20)), 50, oFXAnimSpark)
    smk.image_speed = 0.7
    smk.additive = 0
    smk.sprite_index = sSmoke1
    smk.image_alpha = 0.6
    if (!sfx_isplaying(sndStoneLoop))
        sfx_loop(sndStoneLoop)
}
else
{
    alarm[2] = 30
    sfx_stop(sndStoneLoop)
}
