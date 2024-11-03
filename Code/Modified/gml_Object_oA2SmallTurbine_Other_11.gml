expl = instance_create((x + 16), (y + 16), oFXAnimSpark)
expl.image_speed = 0.5
expl.additive = 0
expl.sprite_index = sExpl1
repeat (8)
{
    expl = instance_create((x + random(32)), (y + random(32)), oFXAnimSpark)
    expl.image_speed = (0.4 + random(0.4))
    expl.additive = 0
    expl.sprite_index = sExpl1
}
repeat (20)
    instance_create((x + 16), (y + 3), oDebris)
PlaySoundMono(deathsound)
with (oMoveWater)
    instance_destroy()
o = instance_create(x, y, oMoveWater)
o.delay = 2
if (eventno == 2)
{
    o.targety = 208
    global.event[101] = 2
}
if (eventno == 3)
{
    o.targety = 304
    global.event[101] = 3
}
if (eventno == 4)
{
    o.targety = 432
    global.event[101] = 4
}
instance_activate_region((x - 64), (y - 64), 128, 128, true)
instance_destroy()
