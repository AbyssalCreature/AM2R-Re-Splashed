if (myhealth <= shell1hp && prevhealth > shell1hp)
{
    expl = instance_create(x, (y - 8), oFXAnimSpark)
    expl.image_speed = 0.5
    expl.additive = 0
    expl.sprite_index = sExpl1
    expl.depth = -5
    repeat (8)
        instance_create(x, y, oDebris)
    deb = instance_create(x, y, oDebris)
    deb.sprite_index = sShirkArmor1
    deb.depth = -4
}
if (myhealth <= shell2hp && prevhealth > shell2hp)
{
    expl = instance_create((x + 8), y, oFXAnimSpark)
    expl.image_speed = 0.5
    expl.additive = 0
    expl.sprite_index = sExpl1
    expl.depth = -5
    repeat (8)
        instance_create(x, y, oDebris)
    deb = instance_create(x, y, oDebris)
    deb.sprite_index = sShirkArmor2
    deb.depth = -4
}
if (myhealth <= 0 && prevhealth > 0)
{
    alarm[3] = 1
    statetime = 0
    yVel = -2
    xVel *= 0.5
}
prevhealth = myhealth
