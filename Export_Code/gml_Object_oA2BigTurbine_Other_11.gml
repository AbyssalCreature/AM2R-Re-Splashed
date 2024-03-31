expl = instance_create((x + 24), (y + 30), oFXAnimSpark)
expl.image_speed = 0.5
expl.additive = 0
expl.sprite_index = sExpl1
repeat (8)
{
    expl = instance_create(((x + 10) + random(30)), ((y + 10) + random(50)), oFXAnimSpark)
    expl.image_speed = (0.4 + random(0.4))
    expl.additive = 0
    expl.sprite_index = sExpl1
}
repeat (20)
    instance_create((x + 2), (y + 30), oDebris)
PlaySoundMono(deathsound)
o = instance_create(x, y, oMoveWater)
o.targety = 1552
o.delay = 2
global.event[101] = 1
instance_create((x - 120), y, oBubbleSpawner)
with (wall)
    instance_destroy()
instance_destroy()
