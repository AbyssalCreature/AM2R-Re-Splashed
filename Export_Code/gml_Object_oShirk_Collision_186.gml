event_inherited()
if (myhealth >= shell1hp)
{
    deb = instance_create(x, y, oDebris)
    deb.sprite_index = sShirkArmor1
    if (frozen > 0)
        deb.sprite_index = sShirkArmor1Frozen
    deb.depth = -4
}
if (myhealth >= shell2hp)
{
    deb = instance_create(x, y, oDebris)
    deb.sprite_index = sShirkArmor2
    if (frozen > 0)
        deb.sprite_index = sShirkArmor2Frozen
    deb.depth = -4
}
