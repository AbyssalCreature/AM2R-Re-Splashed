alarm[0] = 10
if (state == 4 && y == 208)
{
    smk = instance_create(x, ((y - 4) + random(8)), oFXAnimSpark)
    smk.image_speed = (0.2 + random(0.5))
    smk.additive = 0
    smk.sprite_index = sSmoke1
    smk.image_alpha = 0.6
}
