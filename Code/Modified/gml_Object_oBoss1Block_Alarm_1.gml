if (hspeed != 0)
{
    smk = instance_create(((x - 16) + random(32)), y, oFXAnimSpark)
    smk.image_speed = 0.5
    smk.additive = 0
    smk.sprite_index = sSmoke1
    smk.image_alpha = 0.6
    smk.depth = -95
}
alarm[1] = 5
