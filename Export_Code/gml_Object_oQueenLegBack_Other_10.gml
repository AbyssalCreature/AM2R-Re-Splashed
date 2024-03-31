var i;
i = 0
repeat (3)
{
    expl = instance_create(((x - 20) + (i * 20)), y, oFXAnimSpark)
    expl.image_speed = 0.5
    expl.additive = 0
    expl.sprite_index = sExplSmoke
    expl.depth = 9
    expl.vspeed = -0.5
    i += 1
}
