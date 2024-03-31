if instance_exists(myobj)
{
    deb = instance_create(x, y, oDebris)
    deb.sprite_index = sShielderShield
    if (frozen > 0)
        deb.sprite_index = sShielderShieldFrozen
    deb.depth = -4
    deb.image_angle = myobj.image_angle
    deb.image_index = myobj.image_index
    deb.image_speed = 0
}
event_inherited()
