with (spike)
    instance_destroy()
eoffset = (24 * facing)
i = 1
repeat (10)
{
    expl = instance_create((((x + eoffset) - 8) + random(16)), (y - (8 * i)), oFXAnimSpark)
    expl.image_speed = (0.1 + (i / 8))
    expl.additive = 0
    expl.sprite_index = sExpl1
    expl.depth = (-10 - i)
    i += 1
}
block = instance_create(x, y, oBoss1Block3)
block.facing = facing
instance_destroy()
