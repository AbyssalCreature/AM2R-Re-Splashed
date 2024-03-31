if (x < 32)
{
    hspeed = 0
    x = 32
}
if (y > 208)
{
    speed = 0
    gravity = 0
    rotspeed = 0
    y = 208
    smk = instance_create(x, y, oFXAnimSpark)
    smk.image_speed = 0.5
    smk.additive = 0
    smk.sprite_index = sSmoke1
    smk.image_alpha = 0.6
}
image_angle += rotspeed
