if (active == 1)
{
    sprite_index = sA7TankDestr
    expl = make_explosion1((x + 8), (y + 16))
    expl.depth = -500
    active = 0
    repeat irandom_range(5, 15)
    {
        shard = instance_create(irandom_range(x, (x + sprite_width)), irandom_range(y, (y + sprite_height)), oGreenCrystalShard)
        shard.sprite_index = sGLabTubeShard
        shard.image_index = irandom_range(0, 3)
    }
}
