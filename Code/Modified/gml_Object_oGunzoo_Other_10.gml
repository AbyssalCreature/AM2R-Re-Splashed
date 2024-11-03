event_inherited()
if (random(2) < 0.2)
    instance_create(x, y, oDebris)
if (myhealth <= 140 && prevhealth > 140)
{
    expl = instance_create(x, (y - 8), oFXAnimSpark)
    expl.image_speed = 0.5
    expl.additive = 0
    expl.sprite_index = sExpl1
    expl.depth = -4
    repeat (8)
        instance_create(x, y, oDebris)
    deb = instance_create(x, y, oDebris)
    deb.sprite_index = sGunzooArmor1
    deb.depth = -4
    phase = 1
}
if (myhealth <= 70 && prevhealth > 70)
{
    expl = instance_create((x + 8), y, oFXAnimSpark)
    expl.image_speed = 0.5
    expl.additive = 0
    expl.sprite_index = sExpl1
    expl.depth = -4
    repeat (8)
        instance_create(x, y, oDebris)
    deb = instance_create(x, y, oDebris)
    deb.sprite_index = sGunzooArmor1
    deb.depth = -4
    phase = 2
}
if (myhealth <= 0)
    alarm[3] = 1
prevhealth = myhealth
