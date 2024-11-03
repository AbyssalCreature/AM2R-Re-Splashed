with (other.id)
{
    if (fxtimer == 0 || fxtimer == 2 || fxtimer == 4)
    {
        repeat (2)
        {
            expl = instance_create(x, (y - 16), oFXAnimSpark)
            expl.image_speed = 0.2
            expl.additive = 0
            expl.sprite_index = sWaterParticle
            expl.direction = (45 + random(90))
            expl.speed = (1 + random(1))
            expl.gravity_direction = 270
            expl.gravity = 0.2
        }
    }
    if (global.currentsuit < 2)
        waterfall = 2
}
